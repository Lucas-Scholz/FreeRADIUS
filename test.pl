#!/usr/bin/perl -w

use strict;
use warnings;

use lib '.';

use Test::More;

use privacyidea_radius;

our %RAD_PERLCONF = {configfile => "rlm_perl.ini"};

our $ret_hash;
our @CONFIG_FILES;
our $CONFIG_FILE;
our $Config;
our $Mapping;

our $cfg_file;

is( $cfg_file, undef, 'Config file variable is undefined on start.');

use_ok( 'privacyidea_radius' );

is( preacct(), RLM_MODULE_OK, 'Check "preacct" function in script.' );

is( post_auth(), RLM_MODULE_OK, 'Check "post_auth" function.');

is( accounting(), RLM_MODULE_OK, 'Check "accounting" function.');

done_testing()
