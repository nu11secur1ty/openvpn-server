#!/usr/bin/perl
# @nu11secur1ty, g1d 2021 
use strict;
use warnings;
use diagnostics;
no warnings 'numeric';


my $status_not_ok = 0;
my $check_status = `pgrep -f stunnel`;
	if ($check_status == 0){
		print "No pid found\n";
		$status_not_ok = 1;
	}else{
		print "Status already started\n";
	}

# Starting the service
	if ($status_not_ok == 1) {
		my $starting = `systemctl start stunnel4.service`;
		print "The problem is fixed: $check_status\n";
	}

# Listening Service:
my $bad_status = "refused";
my $stunnel_already = `systemctl status stunnel4.service | grep -o "already"`;

my $already_L_443_check = $stunnel_already eq $bad_status;
if ($already_L_443_check == 0) {
	print "Listening on 443 is OK\n";
}else{
	print "Listening on 443 is not runnig\n";
}

# Fix Listeninig
my $g00d_status = "already";
my $stunnel_refused = `systemctl status stunnel4.service | grep -o "refused"`;

my $already_L_443_fix = $stunnel_refused eq $bad_status;
if ($already_L_443_fix == 1){
	my $stunnel_reload = `systemctl restart stunnel4.service`;
	print "The stunel listening on port 443 is runing\n";
}else{
	print "The new listening status is OK\n";
}
exit 0;
