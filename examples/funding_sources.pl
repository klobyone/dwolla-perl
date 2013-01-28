#! /usr/bin/perl

use strict;
use warnings;

use WebService::Dwolla;
use Data::Dumper;

my $api = WebService::Dwolla->new(); 

# Set key, secret, and OAuth token from config file.
$api->set_api_config_from_file('/usr/local/etc/dwolla_api.conf');

# Example 1: Get all funding sources

my $funding_sources = $api->funding_sources();
if (!$funding_sources) {
    print Dumper($api->get_errors());
} else {
    print Dumper($funding_sources);
}

# Example 2: Get by funding source by id.

my $source_id = 'a4946ae2d2b7f1f880790f31a36887f5';

my $fs = $api->funding_source($source_id);
if (!$fs) {
    print Dumper($api->get_errors());
} else {
    print Dumper($fs);
}
