# NAME

HTML::OSM - A module to generate an interactive OpenStreetMap with customizable coordinates and zoom level.

# VERSION

Version 0.01

# SYNOPSIS

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

# SYNOPSIS

`HTML::OSM` is a Perl module for generating an interactive map using OpenStreetMap (OSM) and Leaflet.
The module accepts a list of coordinates with optional labels and zoom level to create a dynamic HTML file containing an interactive map.
The generated map allows users to view marked locations, zoom, and search for locations using the Nominatim API.

# SUBROUTINES/METHODS

## new

    my $osm = HTML::OSM->new(
            coordinates => \@coordinates,   # Arrayref of [latitude, longitude, label]
            zoom => $zoom                                 # Optional zoom level (default: 12)
    );

Creates a new HTML::OSM object with the provided coordinates and optional zoom level.

Generates an HTML file (`map.html`) containing the interactive map with the specified coordinates. The file includes basic functionality such as zooming, resetting the map view, and searching locations.

## coordinates

An array reference containing a list of coordinates. Each entry should be an array with latitude, longitude, and an optional label, in the format:

    [latitude, longitude, label]

If no coordinates are provided, an error will be thrown.

## zoom

An optional zoom level for the map, with a default value of 12.

# EXAMPLES

## Example 1: Basic usage

    my $osm = HTML::OSM->new(
            coordinates => [
                    [34.0522, -118.2437, 'Los Angeles'],
                    [48.8566, 2.3522, 'Paris'],
            ],
    );
    $osm->generate_map();

## Example 2: With custom zoom

    my $osm = HTML::OSM->new(
            coordinates => [
                    [40.748817, -73.985428, 'Empire State Building'],
            ],
            zoom => 14,
    );
    $osm->generate_map();

## generate\_map

    $osm->generate_map();

# AUTHOR

Nigel Horne, `<njh at bandsman.co.uk>`

# BUGS

This module is provided as-is without any warranty.

Please report any bugs or feature requests to `bug-html-osm at rt.cpan.org`,
or through the web interface at
[http://rt.cpan.org/NoAuth/ReportBug.html?Queue=HTML-OSM](http://rt.cpan.org/NoAuth/ReportBug.html?Queue=HTML-OSM).
I will be notified, and then you'll
automatically be notified of progress on your bug as I make changes.

# SEE ALSO

- [File::Slurp](https://metacpan.org/pod/File%3A%3ASlurp)
- [Leaflet](https://metacpan.org/pod/Leaflet)

## TODO

Allow dynamic addition/removal of markers via user input.

Change API to be closer to HTML::GoogleMaps::V3

# LICENSE

GPL-2

# POD ERRORS

Hey! **The above document had some coding errors, which are explained below:**

- Around line 292:

    '=item' outside of any '=over'

- Around line 296:

    You forgot a '=back' before '=head2'
