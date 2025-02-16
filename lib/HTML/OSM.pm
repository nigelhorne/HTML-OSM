#!/usr/bin/env perl

package HTML::OSM;

use strict;
use warnings;
use File::Slurp;
use LWP::UserAgent;
use JSON::MaybeXS;
use Scalar::Util;

=head1 NAME

HTML::OSM - A module to generate an interactive OpenStreetMap with customizable coordinates and zoom level.

=head1 VERSION

Version 0.01

=cut

our $VERSION = '0.06';

=head1 SYNOPSIS

C<HTML::OSM> is a Perl module for generating an interactive map using OpenStreetMap (OSM) and Leaflet.
The module accepts a list of coordinates with optional labels and zoom level to create a dynamic HTML file containing an interactive map.
The generated map allows users to view marked locations, zoom, and search for locations using the Nominatim API.

    use HTML::OSM;
    my $info = HTML::OSM->new();
    # ...

=head1 SUBROUTINES/METHODS

=head2 new

    use HTML::OSM;

    my $osm = HTML::OSM->new(
	  coordinates => [
		  [34.0522, -118.2437, 'Los Angeles'],
		  [48.8566, 2.3522, 'Paris'],
	  ],
	  zoom => 14,
    );
    $osm = HTML::OSM->new(
	  coordinates => [
		  [37.7749, -122.4194, 'San Francisco'],
		  [40.7128, -74.0060, 'New York'],
		  [51.5074, -0.1278, 'London'],
	  ],
	  zoom => 10,
    );

    $osm->generate_map();

Creates a new C<HTML::OSM> object with the provided coordinates and optional zoom level.

=over 4

=item * coordinates

An array reference containing a list of coordinates.
Each entry should be an array with latitude, longitude, and an optional label, in the format:

  [latitude, longitude, label, icon_url]

If latitude and/or longitude is undefined,
the label is taken to be a location to be added.
If no coordinates are provided, an error will be thrown.

=item * geocoder

An optional geocoder object such as L<Geo::Coder::List> or L<Geo::Coder::Free>.

=item * height

Height (in pixels or using your own unit), the default is 500px.

=item * width

Width (in pixels or using your own unit), the default is 100%.

=item * zoom

An optional zoom level for the map, with a default value of 12.

=back

=cut

sub new
{
	my $class = shift;

	# Handle hash or hashref arguments
	my %args;
	if((@_ == 1) && (ref $_[0] eq 'HASH')) {
		# If the first argument is a hash reference, dereference it
		%args = %{$_[0]};
	} elsif((scalar(@_) % 2) == 0) {
		# If there is an even number of arguments, treat them as key-value pairs
		%args = @_;
	} else {
		# If there is an odd number of arguments, treat it as an error
		carp(__PACKAGE__, ': Invalid arguments passed to new()');
		return;
	}

	if(!defined($class)) {
		if((scalar keys %args) > 0) {
			# Using HTML::OSM:new(), not HTML::OSM->new()
			carp(__PACKAGE__, ' use ->new() not ::new() to instantiate');
			return;
		}

		# FIXME: this only works when no arguments are given
		$class = __PACKAGE__;
	} elsif(Scalar::Util::blessed($class)) {
		# If $class is an object, clone it with new arguments
		return bless { %{$class}, %args }, ref($class);
	}

	return bless {
		coordinates => $args{coordinates} || [],
		height => $args{'height'} || '500px',
		width => $args{'width'} || '100%',
		zoom => $args{zoom} || 12,
		%args
	}, $class;
}

=head2 generate_map

Generates an HTML file (C<map.html>) containing the interactive map with the specified coordinates.
The file includes basic functionality such as zooming, resetting the map view, and searching locations.

  $osm->generate_map();

=cut

sub generate_map
{
	my $self = shift;

	# Default size if not provided
	my $height = $self->{height} || '500px';
	my $width = $self->{width} || '100%';

	my $coordinates = $self->{coordinates};

	die 'No coordinates provided' unless @$coordinates;

	my @valid_coordinates;

	foreach my $coord (@$coordinates) {
		my ($lat, $lon, $label, $icon_url) = @$coord;

		# If an address is provided instead of coordinates, fetch dynamically
		if (!defined $lat || !defined $lon) {
			($lat, $lon) = $self->_fetch_coordinates($label);
		} else {
			# Validate Latitude and Longitude
			if (!defined $lat || !defined $lon || $lat !~ /^-?\d+(\.\d+)?$/ || $lon !~ /^-?\d+(\.\d+)?$/) {
				warn "Skipping invalid coordinate: ($lat, $lon)";
				next;
			}
			if ($lat < -90 || $lat > 90 || $lon < -180 || $lon > 180) {
				warn "Skipping out-of-range coordinate: ($lat, $lon)";
				next;
			}
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
				const customIcon = L.icon({
					iconUrl: '$icon_url',
					// iconSize: [32, 32],
					iconAnchor: [16, 32],
					popupAnchor: [0, -32]
				});
			};

			push @js_markers, qq{
				$icon_js
				var marker = L.marker([$lat, $lon], { icon: customIcon }).addTo(map).bindPopup('$label');
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
				var query = event.target.value.trim();
				if (!query) {
					alert('Please enter a valid location.');
					return;
				}

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
					} else {
						alert('No results found. Try a different location.');
					}
				})
				.catch(error => {
					console.error('Error fetching location:', error);
					alert('Failed to fetch location. Please check your internet connection and try again.');
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

sub _fetch_coordinates
{
	my ($self, $address) = @_;

	if(my $geocoder = $self->{'geocoder'}) {
		if(my $rc = $geocoder->geocode($address)) {
			if(ref($rc)) {
				if($rc->can('latitude')) {
					return ($rc->latitude(), $rc->longitude());
				}
			}
		}
	}
	my $ua = $self->{'ua'} || LWP::UserAgent->new();
	my $url = "https://nominatim.openstreetmap.org/search?format=json&q=" . $address;
	$ua->agent(__PACKAGE__ . "/$VERSION");

	my $response = $ua->get($url);
	if($response->is_success()) {
		my $data = decode_json($response->decoded_content());
		return ($data->[0]{lat}, $data->[0]{lon}) if @$data;
	}
	warn "Error fetching coordinates for: $address";
	return
}

sub onload_render
{
	my $self = shift;

	# Default size if not provided
	my $height = $self->{'height'} || '500px';
	my $width = $self->{'width'} || '100%';

	my $coordinates = $self->{coordinates};

	die 'No coordinates provided' unless @$coordinates;

	my @valid_coordinates;

	foreach my $coord (@$coordinates) {
		my ($lat, $lon, $label, $icon_url) = @$coord;

		# If an address is provided instead of coordinates, fetch dynamically
		if (!defined $lat || !defined $lon) {
			($lat, $lon) = $self->_fetch_coordinates($label);
		} else {
			# Validate Latitude and Longitude
			if (!defined $lat || !defined $lon || $lat !~ /^-?\d+(\.\d+)?$/ || $lon !~ /^-?\d+(\.\d+)?$/) {
				warn "Skipping invalid coordinate: ($lat, $lon)";
				next;
			}
			if ($lat < -90 || $lat > 90 || $lon < -180 || $lon > 180) {
				warn "Skipping out-of-range coordinate: ($lat, $lon)";
				next;
			}
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

	my $head = qq{
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
	}
}


=head1 AUTHOR

Nigel Horne, C<< <njh at bandsman.co.uk> >>

=head1 BUGS

=head1 SEE ALSO

=over 4

=item * L<File::Slurp>

=item * L<Leaflet>

=item * L<https://wiki.openstreetmap.org/wiki/API>

=back

You can find documentation for this module with the perldoc command.

    perldoc HTML::OSM

You can also look for information at:

=over 4

=item * MetaCPAN

L<https://metacpan.org/dist/HTML-OSM>

=item * RT: CPAN's request tracker

L<https://rt.cpan.org/NoAuth/Bugs.html?Dist=HTML-OSM>

=item * CPAN Testers' Matrix

L<http://matrix.cpantesters.org/?dist=HTML-OSM>

=item * CPAN Testers Dependencies

L<http://deps.cpantesters.org/?module=HTML::OSM>

=back

=head1 SUPPORT

This module is provided as-is without any warranty.

Please report any bugs or feature requests to C<bug-html-osm at rt.cpan.org>,
or through the web interface at
L<http://rt.cpan.org/NoAuth/ReportBug.html?Queue=HTML-OSM>.
I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

=head2 TODO

Allow dynamic addition/removal of markers via user input.

Change API to be closer to HTML::GoogleMaps::V3

=head1 LICENSE AND COPYRIGHT

Copyright 2025 Nigel Horne.

This program is released under the following licence: GPL2

=cut

1;

__END__
