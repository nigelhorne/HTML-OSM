#!/usr/bin/env perl

use strict;
use warnings;
use Test::Most;

BEGIN { use_ok('HTML::OSM') }

# Test object creation
my $osm = HTML::OSM->new(
	coordinates => [
		[37.7749, -122.4194, 'San Francisco'],
		[40.7128, -74.0060, 'New York']
	],
	zoom => 10
);

isa_ok($osm, 'HTML::OSM', 'Object is of class HTML::OSM');

# Test default properties
is($osm->{zoom}, 10, 'Zoom level is correctly set');
is($osm->{height}, '500px', 'Default height is 500px');
is($osm->{width}, '100%', 'Default width is 100%');

# Test add_marker method
ok($osm->add_marker([51.5074, -0.1278], html => 'London'), 'Marker added successfully');
is(scalar @{$osm->{coordinates}}, 3, 'Three markers are present');

# Test center method
ok($osm->center([48.8566, 2.3522]), 'Map centered to Paris');
is_deeply($osm->{center}, [48.8566, 2.3522], 'Center coordinates are correct');

# Test zoom method
$osm->zoom(12);
is($osm->zoom(), 12, 'Zoom level updated successfully');

# Test rendering outputs
my ($head, $body) = $osm->onload_render();
like($head, qr/leaflet/, 'Head section contains Leaflet library');
like($body, qr/map\.setView/, 'Body section contains map setView function');

done_testing();
