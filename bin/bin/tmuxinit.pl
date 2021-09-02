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

    my ($wname, $dir) = split /\./, $name, 2;

    has $wname and next;
    defined $dir or die "incorrect naming convention";

    $dir =~ s/\./\//g;
    $dir = '/' . $dir;

    print "$wname ($dir)";

    system "tmux new -d -c $dir -s $wname";
    system "tmux source-file $fname";
}

closedir $dh;
