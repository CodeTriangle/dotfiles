#!/usr/bin/env perl

use strict;
use warnings;

$ENV{TMUX} = undef;

my $home = $ENV{"HOME"};
my $confdir = "$home/.tmux";
opendir my $dh, $confdir or die "confdir $confdir does not exist";

sub has {
    my $e = shift;
    defined $e or die "no argument to has";
    return not system "tmux has -t $e 2>/dev/null";
}

while (my $name = readdir $dh) {
    my $fname = "$confdir/$name";
    -f $fname or next;

    my @components = split '/', $fname;
    my $wname = pop @components;

    has $wname and next;

    open my $fh, "<", $fname;
    my $dir = <$fh>;
    $dir =~ s/\s//g;
    system "tmux new -d -c $dir -s $wname";

    my $key = <$fh>;
    $key =~ s/\s//g;
    system "tmux bind-key $key switch-client -t $wname";

    while (my $line = <$fh>) {
        chomp $line;
        $line eq "" and next;
        system "tmux $line";
    }

    print "$wname ($dir)\n";

    close $fh;
}

closedir $dh;
