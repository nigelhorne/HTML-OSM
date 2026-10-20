#!usr/bin/env perl

use 5.006;
use strict;
use warnings;

use Test::DescribeMe qw(author);
use Test::Most;
use Test::Needs { 'Test::Spelling::Comment' => '0.002' };

Test::Spelling::Comment->import();
Test::Spelling::Comment->new()->add_stopwords(<DATA>)->all_files_ok();

__DATA__
attr
CDN
Choropleth
env
fitBounds
Geocode
geocoder
geocoders
geocoding
GeoJSON
GPX
Heatmap
html
js
JS
lon
Nominatim
onload
OSM
params
px
rc
UA
usr
WGS
