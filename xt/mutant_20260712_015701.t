#!/usr/bin/env perl
# Auto-generated mutant test stubs
# Generated: 2026-07-12 01:57:01
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

# --- SURVIVOR: COND_INV_291_2 (MEDIUM) line 291 in add_marker() ---
# Source:  if(ref($params)) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_291_2 line 291 in add_marker()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 291 in add_marker() to detect the mutant
    fail('COND_INV_291_2: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_293_25_!= (HIGH) line 293 in add_marker() ---
# Source:  if(scalar(@{$point}) == 2) {
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (2 variants — one test should kill all):
#   Numeric boundary flip == to !=
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_293_25_!= line 293 in add_marker()';
    # Suggested boundary values to test: 1, 2, 3
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 293 in add_marker() to detect the mutant
    fail('NUM_BOUNDARY_293_25_!=: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_296_5 (MEDIUM) line 296 in add_marker() ---
# Source:  return 0;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_296_5 line 296 in add_marker()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 296 in add_marker() to detect the mutant
    fail('BOOL_NEGATE_296_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_304_4 (MEDIUM) line 304 in add_marker() ---
# Source:  if(my $logger = $self->{'logger'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_304_4 line 304 in add_marker()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 304 in add_marker() to detect the mutant
    fail('COND_INV_304_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_310_3 (MEDIUM) line 310 in add_marker() ---
# Source:  return 0 if(!_validate($lat, $lon));
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_310_3 line 310 in add_marker()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 310 in add_marker() to detect the mutant
    fail('BOOL_NEGATE_310_3: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_313_3 (MEDIUM) line 313 in add_marker() ---
# Source:  return 0 unless(defined($lat) && defined($lon));
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_313_3 line 313 in add_marker()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 313 in add_marker() to detect the mutant
    fail('BOOL_NEGATE_313_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_344_2 (MEDIUM) line 344 in center() ---
# Source:  if(!defined($point)) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_344_2 line 344 in center()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 344 in center() to detect the mutant
    fail('COND_INV_344_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_350_2 (MEDIUM) line 350 in center() ---
# Source:  if(ref($params)) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_350_2 line 350 in center()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 350 in center() to detect the mutant
    fail('COND_INV_350_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_351_3 (MEDIUM) line 351 in center() ---
# Source:  if(ref($point) eq 'ARRAY') {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_351_3 line 351 in center()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 351 in center() to detect the mutant
    fail('COND_INV_351_3: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_352_25_!= (HIGH) line 352 in center() ---
# Source:  if(scalar(@{$point}) == 2) {
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (2 variants — one test should kill all):
#   Numeric boundary flip == to !=
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_352_25_!= line 352 in center()';
    # Suggested boundary values to test: 1, 2, 3
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 352 in center() to detect the mutant
    fail('NUM_BOUNDARY_352_25_!=: replace with real assertion');
}

# --- SURVIVOR: COND_INV_363_4 (MEDIUM) line 363 in center() ---
# Source:  if(my $logger = $self->{'logger'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_363_4 line 363 in center()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 363 in center() to detect the mutant
    fail('COND_INV_363_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_368_3 (MEDIUM) line 368 in center() ---
# Source:  return 0 if(!_validate($lat, $lon));
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_368_3 line 368 in center()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 368 in center() to detect the mutant
    fail('BOOL_NEGATE_368_3: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_372_2 (MEDIUM) line 372 in center() ---
# Source:  return 0 unless(defined($lat) && defined($lon));
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_372_2 line 372 in center()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 372 in center() to detect the mutant
    fail('BOOL_NEGATE_372_2: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_376_2 (MEDIUM) line 376 in center() ---
# Source:  return 1;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_376_2 line 376 in center()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 376 in center() to detect the mutant
    fail('BOOL_NEGATE_376_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_425_3 (MEDIUM) line 425 in zoom() ---
# Source:  if(defined($params->{'zoom'})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_425_3 line 425 in zoom()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 425 in zoom() to detect the mutant
    fail('COND_INV_425_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_448_5 (MEDIUM) line 448 in _fetch_coordinates() ---
# Source:  if(defined($rc->{'geometry'}{'location'}{'lat'})) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_448_5 line 448 in _fetch_coordinates()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 448 in _fetch_coordinates() to detect the mutant
    fail('COND_INV_448_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_452_4 (MEDIUM) line 452 in _fetch_coordinates() ---
# Source:  if(ref($rc) eq 'ARRAY') {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_452_4 line 452 in _fetch_coordinates()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 452 in _fetch_coordinates() to detect the mutant
    fail('COND_INV_452_4: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_453_5 (MEDIUM) line 453 in _fetch_coordinates() ---
# Source:  return $rc;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_453_5 line 453 in _fetch_coordinates()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 453 in _fetch_coordinates() to detect the mutant
    fail('BOOL_NEGATE_453_5: replace with real assertion');
}

# --- SURVIVOR: COND_INV_519_2 (MEDIUM) line 519 in onload_render() ---
# Source:  unless(@$coordinates) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition unless to if
TODO: {
    local $TODO = 'Complete: COND_INV_519_2 line 519 in onload_render()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 519 in onload_render() to detect the mutant
    fail('COND_INV_519_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_520_3 (MEDIUM) line 520 in onload_render() ---
# Source:  if(my $logger = $self->{'logger'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_520_3 line 520 in onload_render()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 520 in onload_render() to detect the mutant
    fail('COND_INV_520_3: replace with real assertion');
}

# --- SURVIVOR: COND_INV_533_3 (MEDIUM) line 533 in onload_render() ---
# Source:  if (!defined $lat || !defined $lon) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_533_3 line 533 in onload_render()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 533 in onload_render() to detect the mutant
    fail('COND_INV_533_3: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_549_27_> (HIGH) line 549 in onload_render() ---
# Source:  $min_lat = $lat if $lat < $min_lat;
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (3 variants — one test should kill all):
#   Numeric boundary flip < to >
#   Numeric boundary flip < to <=
#   Numeric boundary flip < to >=
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_549_27_> line 549 in onload_render()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 549 in onload_render() to detect the mutant
    fail('NUM_BOUNDARY_549_27_>: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_550_27_< (HIGH) line 550 in onload_render() ---
# Source:  $max_lat = $lat if $lat > $max_lat;
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (3 variants — one test should kill all):
#   Numeric boundary flip > to <
#   Numeric boundary flip > to >=
#   Numeric boundary flip > to <=
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_550_27_< line 550 in onload_render()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 550 in onload_render() to detect the mutant
    fail('NUM_BOUNDARY_550_27_<: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_551_27_> (HIGH) line 551 in onload_render() ---
# Source:  $min_lon = $lon if $lon < $min_lon;
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (3 variants — one test should kill all):
#   Numeric boundary flip < to >
#   Numeric boundary flip < to <=
#   Numeric boundary flip < to >=
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_551_27_> line 551 in onload_render()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 551 in onload_render() to detect the mutant
    fail('NUM_BOUNDARY_551_27_>: replace with real assertion');
}

# --- SURVIVOR: NUM_BOUNDARY_552_27_< (HIGH) line 552 in onload_render() ---
# Source:  $max_lon = $lon if $lon > $max_lon;
# Hint:    Likely missing edge-case test (boundary value)
# Mutations on this line (3 variants — one test should kill all):
#   Numeric boundary flip > to <
#   Numeric boundary flip > to >=
#   Numeric boundary flip > to <=
TODO: {
    local $TODO = 'Complete: NUM_BOUNDARY_552_27_< line 552 in onload_render()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 552 in onload_render() to detect the mutant
    fail('NUM_BOUNDARY_552_27_<: replace with real assertion');
}

# --- SURVIVOR: COND_INV_558_2 (MEDIUM) line 558 in onload_render() ---
# Source:  if($self->{'center'}) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_558_2 line 558 in onload_render()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 558 in onload_render() to detect the mutant
    fail('COND_INV_558_2: replace with real assertion');
}

# --- SURVIVOR: COND_INV_599_3 (MEDIUM) line 599 in onload_render() ---
# Source:  if ($icon_url) {
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Invert condition if to unless
TODO: {
    local $TODO = 'Complete: COND_INV_599_3 line 599 in onload_render()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 599 in onload_render() to detect the mutant
    fail('COND_INV_599_3: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_673_3 (MEDIUM) line 673 in _validate() ---
# Source:  return 0;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_673_3 line 673 in _validate()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 673 in _validate() to detect the mutant
    fail('BOOL_NEGATE_673_3: replace with real assertion');
}

# --- SURVIVOR: BOOL_NEGATE_677_3 (MEDIUM) line 677 in _validate() ---
# Source:  return 0;
# Hint:    Add tests asserting both true and false outcomes
# Mutations on this line (1 variant):
#   Negate boolean return expression
TODO: {
    local $TODO = 'Complete: BOOL_NEGATE_677_3 line 677 in _validate()';
    # NOTE: new() called with no arguments as a starting point.
    # If HTML::OSM requires constructor arguments, add them here.
    my $obj = new_ok('HTML::OSM');
    # TODO: exercise line 677 in _validate() to detect the mutant
    fail('BOOL_NEGATE_677_3: replace with real assertion');
}

# --- LOW DIFFICULTY HINTS (comment stubs) ---

# --- LOW HINT: RETURN_UNDEF_296_5 line 296 in add_marker() ---
# Source:  return 0;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If HTML::OSM requires constructor arguments, add them here.
# my $obj = new_ok('HTML::OSM');
# ok($obj->..., 'RETURN_UNDEF_296_5: add assertion here');

# --- LOW HINT: RETURN_UNDEF_310_3 line 310 in add_marker() ---
# Source:  return 0 if(!_validate($lat, $lon));
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If HTML::OSM requires constructor arguments, add them here.
# my $obj = new_ok('HTML::OSM');
# ok($obj->..., 'RETURN_UNDEF_310_3: add assertion here');

# --- LOW HINT: RETURN_UNDEF_313_3 line 313 in add_marker() ---
# Source:  return 0 unless(defined($lat) && defined($lon));
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If HTML::OSM requires constructor arguments, add them here.
# my $obj = new_ok('HTML::OSM');
# ok($obj->..., 'RETURN_UNDEF_313_3: add assertion here');

# --- LOW HINT: RETURN_UNDEF_368_3 line 368 in center() ---
# Source:  return 0 if(!_validate($lat, $lon));
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If HTML::OSM requires constructor arguments, add them here.
# my $obj = new_ok('HTML::OSM');
# ok($obj->..., 'RETURN_UNDEF_368_3: add assertion here');

# --- LOW HINT: RETURN_UNDEF_372_2 line 372 in center() ---
# Source:  return 0 unless(defined($lat) && defined($lon));
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If HTML::OSM requires constructor arguments, add them here.
# my $obj = new_ok('HTML::OSM');
# ok($obj->..., 'RETURN_UNDEF_372_2: add assertion here');

# --- LOW HINT: RETURN_UNDEF_376_2 line 376 in center() ---
# Source:  return 1;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If HTML::OSM requires constructor arguments, add them here.
# my $obj = new_ok('HTML::OSM');
# ok($obj->..., 'RETURN_UNDEF_376_2: add assertion here');

# --- LOW HINT: RETURN_UNDEF_453_5 line 453 in _fetch_coordinates() ---
# Source:  return $rc;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If HTML::OSM requires constructor arguments, add them here.
# my $obj = new_ok('HTML::OSM');
# ok($obj->..., 'RETURN_UNDEF_453_5: add assertion here');

# --- LOW HINT: RETURN_UNDEF_673_3 line 673 in _validate() ---
# Source:  return 0;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If HTML::OSM requires constructor arguments, add them here.
# my $obj = new_ok('HTML::OSM');
# ok($obj->..., 'RETURN_UNDEF_673_3: add assertion here');

# --- LOW HINT: RETURN_UNDEF_677_3 line 677 in _validate() ---
# Source:  return 0;
# Hint:    Mutation survived, but impact may be minor
# Mutations on this line (1 variant):
#   Replace return expression with undef
# NOTE: new() called with no arguments as a starting point.
# If HTML::OSM requires constructor arguments, add them here.
# my $obj = new_ok('HTML::OSM');
# ok($obj->..., 'RETURN_UNDEF_677_3: add assertion here');

done_testing();
