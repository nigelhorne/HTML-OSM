#!/usr/bin/env perl

package HTML::OSM;

use strict;
use warnings;
use File::Slurp;

=head1 NAME

HTML::OSM - A module to generate an interactive OpenStreetMap with customizable coordinates and zoom level.

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.06';

=head1 SYNOPSIS

  use HTML::OSM;

  my $osm = HTML::OSM->new(
	  coordinates => [
		  [37.7749, -122.4194, 'San Francisco'],
		  [40.7128, -74.0060, 'New York'],
		  [51.5074, -0.1278, 'London'],
	  ],
	  zoom => 10,
  );

  $osm->generate_map();

=head1 SYNOPSIS

C<HTML::OSM> is a Perl module for generating an interactive map using OpenStreetMap (OSM) and Leaflet.
The module accepts a list of coordinates with optional labels and zoom level to create a dynamic HTML file containing an interactive map.
The generated map allows users to view marked locations, zoom, and search for locations using the Nominatim API.

=head2 METHODS

=head3 new

  my $osm = HTML::OSM->new(
	  coordinates => \@coordinates,   # Arrayref of [latitude, longitude, label]
	  zoom => $zoom					# Optional zoom level (default: 12)
  );

Creates a new HTML::OSM object with the provided coordinates and optional zoom level.

=head3 generate_map

  $osm->generate_map();

Generates an HTML file (C<map.html>) containing the interactive map with the specified coordinates. The file includes basic functionality such as zooming, resetting the map view, and searching locations.

=head1 PARAMETERS

=head2 coordinates

An array reference containing a list of coordinates. Each entry should be an array with latitude, longitude, and an optional label, in the format:

  [latitude, longitude, label]

If no coordinates are provided, an error will be thrown.

=head2 zoom

An optional zoom level for the map, with a default value of 12.

=head1 DEPENDENCIES

This module requires the following external modules:

=over 4

=item * L<File::Slurp>

=item * L<Leaflet>

=back

=head1 EXAMPLES

=head2 Example 1: Basic usage

  my $osm = HTML::OSM->new(
	  coordinates => [
		  [34.0522, -118.2437, 'Los Angeles'],
		  [48.8566, 2.3522, 'Paris'],
	  ],
  );
  $osm->generate_map();

=head2 Example 2: With custom zoom

  my $osm = HTML::OSM->new(
	  coordinates => [
		  [40.748817, -73.985428, 'Empire State Building'],
	  ],
	  zoom => 14,
  );
  $osm->generate_map();

=cut

sub new {
	my ($class, %args) = @_;
	my $self = {
		coordinates => $args{coordinates} || [],
		zoom => $args{zoom} || 12,
	};
	bless $self, $class;
	return $self;
}

sub generate_map {
	my ($self, $size) = @_;

	# Default size if not provided
	my $width  = $size->{width}  || '100%';
	my $height = $size->{height} || '500px';

	my $coordinates = $self->{coordinates};

	die 'No coordinates provided' unless @$coordinates;

	   my @valid_coordinates;

	foreach my $coord (@$coordinates) {
		my ($lat, $lon, $label, $icon_url) = @$coord;

		# Validate Latitude and Longitude
		if (!defined $lat || !defined $lon || $lat !~ /^-?\d+(\.\d+)?$/ || $lon !~ /^-?\d+(\.\d+)?$/) {
			warn "Skipping invalid coordinate: ($lat, $lon)";
			next;
		}
		if ($lat < -90 || $lat > 90 || $lon < -180 || $lon > 180) {
			warn "Skipping out-of-range coordinate: ($lat, $lon)";
			next;
		}

		push @valid_coordinates, [$lat, $lon, $label, $icon_url];
	}

	# Ensure at least one valid coordinate exists
	die 'Error: No valid coordinates provided' unless @valid_coordinates;

	my ($min_lat, $min_lon, $max_lat, $max_lon) = (90, 180, -90, -180);

	foreach my $coord (@valid_coordinates) {
		my ($lat, $lon, $label) = @$coord;
		$min_lat = $lat if $lat < $min_lat;
		$max_lat = $lat if $lat > $max_lat;
		$min_lon = $lon if $lon < $min_lon;
		$max_lon = $lon if $lon > $max_lon;
	}

	my $center_lat = ($min_lat + $max_lat) / 2;
	my $center_lon = ($min_lon + $max_lon) / 2;

	my $html = qq{
<!DOCTYPE html>
<html>
<head>
	<title>Interactive Map</title>
	<link rel="stylesheet" href="https://unpkg.com/leaflet\@1.7.1/dist/leaflet.css" />
	<script src="https://unpkg.com/leaflet\@1.7.1/dist/leaflet.js"></script>
	<style>
		#map { width: $width; height: $height; }
		#search-box { margin: 10px; padding: 5px; }
		#reset-button { margin: 10px; padding: 5px; cursor: pointer; }
	</style>
</head>
<body>
	<input type="text" id="search-box" placeholder="Enter location">
	<button id="reset-button">Reset Map</button>
	<div id="map"></div>
	<script>
		var map = L.map('map').setView([$center_lat, $center_lon], $self->{zoom});
		L.tileLayer('https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png', {
			attribution: '&copy; OpenStreetMap contributors'
		}).addTo(map);

		var markers = [];

	};

	my @js_markers;
	foreach my $coord (@valid_coordinates) {
		my ($lat, $lon, $label, $icon_url) = @$coord;
		$label =~ s/'/\\'/g;	# Escape single quotes

		# $icon_url ||= 'https://cdnjs.cloudflare.com/ajax/libs/leaflet/1.7.1/images/marker-icon.png';
		if ($icon_url) {
			my $icon_js = qq{
				var customIcon = L.icon({
					iconUrl: '$icon_url',
					iconSize: [32, 32],
					iconAnchor: [16, 32],
					popupAnchor: [0, -32]
				});
			};

			push @js_markers, qq{
				$icon_js
				var marker = L.marker([$lat, $lon], { icon: $icon_url ? customIcon : undefined }).addTo(map).bindPopup('$label');
				markers.push(marker);
			};
		} else {
			push @js_markers, "var marker = L.marker([$lat, $lon]).addTo(map).bindPopup('$label'); markers.push(marker);";
		}
	}

	$html .= join("\n", @js_markers);

	$html .= qq{
		document.getElementById('reset-button').addEventListener('click', function() {
			map.setView([$center_lat, $center_lon], $self->{zoom});
		});

		document.getElementById('search-box').addEventListener('keyup', function(event) {
			if (event.key === 'Enter') {
				var query = event.target.value;
				fetch(`https://nominatim.openstreetmap.org/search?format=json&q=\${query}`, {
					headers: { 'User-Agent': '__PACKAGE__' }
				})
					.then(response => response.json())
					.then(data => {
						if (data.length > 0) {
							var lat = data[0].lat;
							var lon = data[0].lon;
							map.setView([lat, lon], 14);
							var searchMarker = L.marker([lat, lon]).addTo(map).bindPopup(query).openPopup();
							markers.push(searchMarker);
						}
					});
			}
		});
	</script>
</body>
</html>
	};

	write_file('map.html', $html);
	print "Interactive map saved as map.html. Open this file in a browser.\n";
}

1;

=head1 AUTHOR

Nigel Horne, C<< <njh at bandsman.co.uk> >>

=head1 BUGS

This module is provided as-is without any warranty.

Please report any bugs or feature requests to C<bug-html-osm at rt.cpan.org>,
or through the web interface at
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=HTML-OSM>.
I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

=head2 TODO

Add a .catch() and display user feedback
Allow dynamic addition/removal of markers via user input.
Fetch coordinates dynamically using an API (e.g., OpenStreetMap Nominatim).
Allow the map size to be configurable.

Change API to be closer to HTML::GoogleMaps::V3

=head1 LICENSE

GPL-2

=cut

