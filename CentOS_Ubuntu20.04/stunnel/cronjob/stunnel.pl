#!/usr/bin/perl
# @nu11secur1ty 2021
use strict;
use warnings;
use diagnostics;

my $bad_status = "refuse";
my $g00d_status = "already";

my $reload_ = `systemctl restart stunnel4.service`;

my $stunnel_already = `systemctl status stunnel4.service | grep already > al && echo 'already' al`;
my $stunnel_refuse = `systemctl status stunnel4.service | grep refuse > ref && echo 'refuse' ref`;
	if ($g00d_status ne $stunnel_already) {
		print "Everything is ok\n";
	}else{
		print "No the status is not ok\n";
	}
	if ($bad_status ne $stunnel_refuse){
		system($reload_);
	}
		sleep 1;
			my $clean = `rm -rf al ref`;
	exit 0;
