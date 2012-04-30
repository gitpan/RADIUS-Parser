#!/usr/bin/env perl


use RADIUS::Parser;

my @logs = qw(radius.log);
my @labels = qw(
Event-Timestamp
User-Name
File
);

my $radius = RADIUS::Parser->new(DEBUG=>1, DAYSFORORPHAN=>1, AUTOPURGE=>0, ALLEVENTS=>1, XMLENCODING=>"us-ascii", OUTPUTDIR=>'/tmp/radius', LABELS=>\@labels);
my $result = $radius->group(\@logs);



