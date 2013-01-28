#! /usr/bin/perl

use strict;
use warnings;

use WebService::Dwolla; # Include Dwolla REST API Client
use Data::Dumper;     # Include this to help with debugging.

# Instantiate new client.
my $api = WebService::Dwolla->new(); 

# Set key, secret, and OAuth token from config file.
$api->set_api_config_from_file('/usr/local/etc/dwolla_api.conf');

# Example 1: Retrieve a list of transactions for the user associated with the
# provided OAuth token.

my $listings = $api->listings('02-01-2013');

if (!$listings) {
    print Dumper($api->get_errors());
} else {
    print Dumper($listings);
}
