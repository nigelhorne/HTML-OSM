#!/usr/bin/env perl
# Auto-generated mutant test stubs
# Generated: 2026-07-12 13:23:04
# Generator: scripts/test-generator-index
#
# DO NOT COMMIT without completing the TODO sections.
#
# HIGH/MEDIUM difficulty survivors have TODO stubs — these need real tests.
# LOW difficulty survivors appear as comment hints — worth improving.
#
# Stubs call new() for modules with a constructor, or show a class method
# placeholder for modules without one. Add arguments as needed.

use strict;
use warnings;
use Test::More;

use_ok('HTML::OSM');

################################################################
# FILE: lib/HTML/OSM.pm
################################################################
# --- SURVIVORS (TODO stubs) ---

# --- SURVIVOR: COND_INV_344_2 (MEDIUM) line 344 in add_marker() ---
# Source:  if(ref($params)) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_344_2 line 344 in add_marker()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 344 in add_marker() to detect the mutant
    fail('COND_INV_344_2: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_346_25_!= (HIGH) line 346 in add_marker() ---
# Source:  if(scalar(@{$point}) == 2) {
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (2 variants — one test should kill all):
#   Numeric boundary flip == to !=
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_346_25_!= line 346 in add_marker()';
    # Suggested boundary values to test: 1, 2, 3
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 346 in add_marker() to detect the mutant
    fail('NUM_BOUNDARY_346_25_!=: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_349_5 (MEDIUM) line 349 in add_marker() ---
# Source:  return 0;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_349_5 line 349 in add_marker()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 349 in add_marker() to detect the mutant
    fail('BOOL_NEGATE_349_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_357_4 (MEDIUM) line 357 in add_marker() ---
# Source:  if(my $logger = $self->{'logger'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_357_4 line 357 in add_marker()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 357 in add_marker() to detect the mutant
    fail('COND_INV_357_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_363_3 (MEDIUM) line 363 in add_marker() ---
# Source:  return 0 if(!_validate($lat, $lon));
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_363_3 line 363 in add_marker()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 363 in add_marker() to detect the mutant
    fail('BOOL_NEGATE_363_3: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_366_3 (MEDIUM) line 366 in add_marker() ---
# Source:  return 0 unless(defined($lat) && defined($lon));
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_366_3 line 366 in add_marker()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 366 in add_marker() to detect the mutant
    fail('BOOL_NEGATE_366_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_404_2 (MEDIUM) line 404 in add_geojson() ---
# Source:  if(!ref($data)) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_404_2 line 404 in add_geojson()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 404 in add_geojson() to detect the mutant
    fail('COND_INV_404_2: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_409_2 (MEDIUM) line 409 in add_geojson() ---
# Source:  return 1;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_409_2 line 409 in add_geojson()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 409 in add_geojson() to detect the mutant
    fail('BOOL_NEGATE_409_2: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_436_2 (MEDIUM) line 436 in add_heatmap() ---
# Source:  return 1;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_436_2 line 436 in add_heatmap()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 436 in add_heatmap() to detect the mutant
    fail('BOOL_NEGATE_436_2: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_459_2 (MEDIUM) line 459 in add_gpx() ---
# Source:  return 1;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_459_2 line 459 in add_gpx()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 459 in add_gpx() to detect the mutant
    fail('BOOL_NEGATE_459_2: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_511_44_!= (HIGH) line 511 in add_choropleth() ---
# Source:  $max = $min + 1 if !defined($max) || $max == $min;
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (1 variant):
#   Numeric boundary flip == to !=
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_511_44_!= line 511 in add_choropleth()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 511 in add_choropleth() to detect the mutant
    fail('NUM_BOUNDARY_511_44_!=: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_516_29_< (HIGH) line 516 in add_choropleth() ---
# Source:  $idx = $#{$scale} if $idx > $#{$scale};
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (3 variants — one test should kill all):
#   Numeric boundary flip > to <
#   Numeric boundary flip > to >=
#   Numeric boundary flip > to <=
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_516_29_< line 516 in add_choropleth()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 516 in add_choropleth() to detect the mutant
    fail('NUM_BOUNDARY_516_29_<: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_526_2 (MEDIUM) line 526 in add_choropleth() ---
# Source:  return 1;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_526_2 line 526 in add_choropleth()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 526 in add_choropleth() to detect the mutant
    fail('BOOL_NEGATE_526_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_552_2 (MEDIUM) line 552 in center() ---
# Source:  if(!defined($point)) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_552_2 line 552 in center()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 552 in center() to detect the mutant
    fail('COND_INV_552_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_558_2 (MEDIUM) line 558 in center() ---
# Source:  if(ref($params)) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_558_2 line 558 in center()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 558 in center() to detect the mutant
    fail('COND_INV_558_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_559_3 (MEDIUM) line 559 in center() ---
# Source:  if(ref($point) eq 'ARRAY') {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_559_3 line 559 in center()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 559 in center() to detect the mutant
    fail('COND_INV_559_3: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_560_25_!= (HIGH) line 560 in center() ---
# Source:  if(scalar(@{$point}) == 2) {
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (2 variants — one test should kill all):
#   Numeric boundary flip == to !=
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_560_25_!= line 560 in center()';
    # Suggested boundary values to test: 1, 2, 3
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 560 in center() to detect the mutant
    fail('NUM_BOUNDARY_560_25_!=: replace with real assertion');
}

# --- SURVIVOR: COND_INV_571_4 (MEDIUM) line 571 in center() ---
# Source:  if(my $logger = $self->{'logger'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_571_4 line 571 in center()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 571 in center() to detect the mutant
    fail('COND_INV_571_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_576_3 (MEDIUM) line 576 in center() ---
# Source:  return 0 if(!_validate($lat, $lon));
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_576_3 line 576 in center()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 576 in center() to detect the mutant
    fail('BOOL_NEGATE_576_3: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_580_2 (MEDIUM) line 580 in center() ---
# Source:  return 0 unless(defined($lat) && defined($lon));
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_580_2 line 580 in center()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 580 in center() to detect the mutant
    fail('BOOL_NEGATE_580_2: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_584_2 (MEDIUM) line 584 in center() ---
# Source:  return 1;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_584_2 line 584 in center()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 584 in center() to detect the mutant
    fail('BOOL_NEGATE_584_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_633_3 (MEDIUM) line 633 in zoom() ---
# Source:  if(defined($params->{'zoom'})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_633_3 line 633 in zoom()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 633 in zoom() to detect the mutant
    fail('COND_INV_633_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_656_5 (MEDIUM) line 656 in _fetch_coordinates() ---
# Source:  if(defined($rc->{'geometry'}{'location'}{'lat'})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_656_5 line 656 in _fetch_coordinates()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 656 in _fetch_coordinates() to detect the mutant
    fail('COND_INV_656_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_660_4 (MEDIUM) line 660 in _fetch_coordinates() ---
# Source:  if(ref($rc) eq 'ARRAY') {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_660_4 line 660 in _fetch_coordinates()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 660 in _fetch_coordinates() to detect the mutant
    fail('COND_INV_660_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_661_5 (MEDIUM) line 661 in _fetch_coordinates() ---
# Source:  return $rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_661_5 line 661 in _fetch_coordinates()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 661 in _fetch_coordinates() to detect the mutant
    fail('BOOL_NEGATE_661_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_729_2 (MEDIUM) line 729 in onload_render() ---
# Source:  unless(@$coordinates || @$geojson_layers || @$heatmap_layers || @$gpx_tracks || @$choropleth_layers) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition unless to if
TODO: {
    local $TODO = 'Complete: COND_INV_729_2 line 729 in onload_render()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 729 in onload_render() to detect the mutant
    fail('COND_INV_729_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_730_3 (MEDIUM) line 730 in onload_render() ---
# Source:  if(my $logger = $self->{'logger'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_730_3 line 730 in onload_render()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 730 in onload_render() to detect the mutant
    fail('COND_INV_730_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_740_3 (MEDIUM) line 740 in onload_render() ---
# Source:  if(!defined $lat || !defined $lon) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_740_3 line 740 in onload_render()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 740 in onload_render() to detect the mutant
    fail('COND_INV_740_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_750_2 (MEDIUM) line 750 in onload_render() ---
# Source:  if($self->{'center'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_750_2 line 750 in onload_render()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 750 in onload_render() to detect the mutant
    fail('COND_INV_750_2: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_756_28_> (HIGH) line 756 in onload_render() ---
# Source:  $min_lat = $lat if $lat < $min_lat;
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (3 variants — one test should kill all):
#   Numeric boundary flip < to >
#   Numeric boundary flip < to <=
#   Numeric boundary flip < to >=
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_756_28_> line 756 in onload_render()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 756 in onload_render() to detect the mutant
    fail('NUM_BOUNDARY_756_28_>: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_757_28_< (HIGH) line 757 in onload_render() ---
# Source:  $max_lat = $lat if $lat > $max_lat;
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (3 variants — one test should kill all):
#   Numeric boundary flip > to <
#   Numeric boundary flip > to >=
#   Numeric boundary flip > to <=
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_757_28_< line 757 in onload_render()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 757 in onload_render() to detect the mutant
    fail('NUM_BOUNDARY_757_28_<: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_758_28_> (HIGH) line 758 in onload_render() ---
# Source:  $min_lon = $lon if $lon < $min_lon;
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (3 variants — one test should kill all):
#   Numeric boundary flip < to >
#   Numeric boundary flip < to <=
#   Numeric boundary flip < to >=
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_758_28_> line 758 in onload_render()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 758 in onload_render() to detect the mutant
    fail('NUM_BOUNDARY_758_28_>: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_759_28_< (HIGH) line 759 in onload_render() ---
# Source:  $max_lon = $lon if $lon > $max_lon;
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (3 variants — one test should kill all):
#   Numeric boundary flip > to <
#   Numeric boundary flip > to >=
#   Numeric boundary flip > to <=
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_759_28_< line 759 in onload_render()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 759 in onload_render() to detect the mutant
    fail('NUM_BOUNDARY_759_28_<: replace with real assertion');
}

# --- SURVIVOR: COND_INV_773_2 (MEDIUM) line 773 in onload_render() ---
# Source:  if($self->{cluster}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_773_2 line 773 in onload_render()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 773 in onload_render() to detect the mutant
    fail('COND_INV_773_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_780_2 (MEDIUM) line 780 in onload_render() ---
# Source:  if(@$heatmap_layers) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_780_2 line 780 in onload_render()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 780 in onload_render() to detect the mutant
    fail('COND_INV_780_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_783_2 (MEDIUM) line 783 in onload_render() ---
# Source:  if(@$gpx_tracks) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_783_2 line 783 in onload_render()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 783 in onload_render() to detect the mutant
    fail('COND_INV_783_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_811_2 (MEDIUM) line 811 in onload_render() ---
# Source:  if(@valid_coordinates) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_811_2 line 811 in onload_render()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 811 in onload_render() to detect the mutant
    fail('COND_INV_811_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_812_3 (MEDIUM) line 812 in onload_render() ---
# Source:  if($self->{cluster}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_812_3 line 812 in onload_render()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 812 in onload_render() to detect the mutant
    fail('COND_INV_812_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_819_4 (MEDIUM) line 819 in onload_render() ---
# Source:  if($icon_url) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_819_4 line 819 in onload_render()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 819 in onload_render() to detect the mutant
    fail('COND_INV_819_4: replace with real assertion');
}

# --- SURVIVOR: COND_INV_836_3 (MEDIUM) line 836 in onload_render() ---
# Source:  if($self->{cluster}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_836_3 line 836 in onload_render()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 836 in onload_render() to detect the mutant
    fail('COND_INV_836_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_846_3 (MEDIUM) line 846 in onload_render() ---
# Source:  if(my $style = $opts->{style}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_846_3 line 846 in onload_render()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 846 in onload_render() to detect the mutant
    fail('COND_INV_846_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_851_3 (MEDIUM) line 851 in onload_render() ---
# Source:  if(my $prop = $opts->{popup}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_851_3 line 851 in onload_render()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 851 in onload_render() to detect the mutant
    fail('COND_INV_851_3: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_950_3 (MEDIUM) line 950 in _validate() ---
# Source:  return 0;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_950_3 line 950 in _validate()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 950 in _validate() to detect the mutant
    fail('BOOL_NEGATE_950_3: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_954_3 (MEDIUM) line 954 in _validate() ---
# Source:  return 0;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_954_3 line 954 in _validate()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 954 in _validate() to detect the mutant
    fail('BOOL_NEGATE_954_3: replace with real assertion');
}

# --- LOW DIFFICULTY HINTS (comment stubs) ---

# --- LOW HINT: RETURN_UNDEF_349_5 line 349 in add_marker() ---
# Source:  return 0;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If HTML::OSM requires constructor arguments, add them here.
# my $obj = new_ok('HTML::OSM');
# ok($obj->..., 'RETURN_UNDEF_349_5: add assertion here');

# --- LOW HINT: RETURN_UNDEF_363_3 line 363 in add_marker() ---
# Source:  return 0 if(!_validate($lat, $lon));
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If HTML::OSM requires constructor arguments, add them here.
# my $obj = new_ok('HTML::OSM');
# ok($obj->..., 'RETURN_UNDEF_363_3: add assertion here');

# --- LOW HINT: RETURN_UNDEF_366_3 line 366 in add_marker() ---
# Source:  return 0 unless(defined($lat) && defined($lon));
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If HTML::OSM requires constructor arguments, add them here.
# my $obj = new_ok('HTML::OSM');
# ok($obj->..., 'RETURN_UNDEF_366_3: add assertion here');

# --- LOW HINT: RETURN_UNDEF_409_2 line 409 in add_geojson() ---
# Source:  return 1;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If HTML::OSM requires constructor arguments, add them here.
# my $obj = new_ok('HTML::OSM');
# ok($obj->..., 'RETURN_UNDEF_409_2: add assertion here');

# --- LOW HINT: RETURN_UNDEF_436_2 line 436 in add_heatmap() ---
# Source:  return 1;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If HTML::OSM requires constructor arguments, add them here.
# my $obj = new_ok('HTML::OSM');
# ok($obj->..., 'RETURN_UNDEF_436_2: add assertion here');

# --- LOW HINT: RETURN_UNDEF_459_2 line 459 in add_gpx() ---
# Source:  return 1;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If HTML::OSM requires constructor arguments, add them here.
# my $obj = new_ok('HTML::OSM');
# ok($obj->..., 'RETURN_UNDEF_459_2: add assertion here');

# --- LOW HINT: RETURN_UNDEF_526_2 line 526 in add_choropleth() ---
# Source:  return 1;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If HTML::OSM requires constructor arguments, add them here.
# my $obj = new_ok('HTML::OSM');
# ok($obj->..., 'RETURN_UNDEF_526_2: add assertion here');

# --- LOW HINT: RETURN_UNDEF_576_3 line 576 in center() ---
# Source:  return 0 if(!_validate($lat, $lon));
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If HTML::OSM requires constructor arguments, add them here.
# my $obj = new_ok('HTML::OSM');
# ok($obj->..., 'RETURN_UNDEF_576_3: add assertion here');

# --- LOW HINT: RETURN_UNDEF_580_2 line 580 in center() ---
# Source:  return 0 unless(defined($lat) && defined($lon));
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If HTML::OSM requires constructor arguments, add them here.
# my $obj = new_ok('HTML::OSM');
# ok($obj->..., 'RETURN_UNDEF_580_2: add assertion here');

# --- LOW HINT: RETURN_UNDEF_584_2 line 584 in center() ---
# Source:  return 1;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If HTML::OSM requires constructor arguments, add them here.
# my $obj = new_ok('HTML::OSM');
# ok($obj->..., 'RETURN_UNDEF_584_2: add assertion here');

# --- LOW HINT: RETURN_UNDEF_661_5 line 661 in _fetch_coordinates() ---
# Source:  return $rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If HTML::OSM requires constructor arguments, add them here.
# my $obj = new_ok('HTML::OSM');
# ok($obj->..., 'RETURN_UNDEF_661_5: add assertion here');

# --- LOW HINT: RETURN_UNDEF_950_3 line 950 in _validate() ---
# Source:  return 0;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If HTML::OSM requires constructor arguments, add them here.
# my $obj = new_ok('HTML::OSM');
# ok($obj->..., 'RETURN_UNDEF_950_3: add assertion here');

# --- LOW HINT: RETURN_UNDEF_954_3 line 954 in _validate() ---
# Source:  return 0;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If HTML::OSM requires constructor arguments, add them here.
# my $obj = new_ok('HTML::OSM');
# ok($obj->..., 'RETURN_UNDEF_954_3: add assertion here');

done_testing();
