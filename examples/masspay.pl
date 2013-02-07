#! /usr/bin/perl

use strict;
use warnings;

use WebService::Dwolla; # Include Dwolla REST API Client
use Data::Dumper;       # Include this to help with debugging.

# Instantiate new client.
my $api = WebService::Dwolla->new(); 

# Set key, secret, and OAuth token from config file.
$api->set_api_config_from_file('/usr/local/etc/dwolla_api.conf');

# Example 1: Create a masspay job.

my $pin          = '0000';
my $email        = 'me@example.com';
my $assume_costs = 0;
my $user_job_id  = 'TESTRUN' . int(rand(100));
my $filedata     = [
    {
        'destination' => '812-713-9234',
        'amount'      => '1.00'
    },
    {
        'destination' => '812-713-9234',
        'amount'      => '2.00'
    },
];

# Set mode to test before we process
$api->set_mode('test');

my $mp = $api->masspay_create_job(
    $pin,
    $email,
    $user_job_id,
    $assume_costs,
    undef,
    $filedata
);

if (!$mp) {
    print Dumper($api->get_errors());
} else {
    print Dumper($mp);
}

# Example 2: Get info about a masspay job.

my $uid    = '812-713-9234';
my $job_id = '4bdfxxx6fb';

my $details = $api->masspay_job_details($uid,$job_id);

if (!$details) {
    print Dumper($api->get_errors());
} else {
    print Dumper($details);
}
