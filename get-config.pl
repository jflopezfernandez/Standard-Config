#!/usr/bin/env perl
use strict;
use warnings;
use v5.30;

# TODO: Parse command-line options

# TODO: Get options from configuration file
for my $filename (@ARGV) {
    # Open the configuration file
    open CONFIG_FILE, '<:encoding(UTF-8)', $filename or die("Failed to open file.");

    # TODO: Figure out how strings are initialized properly
    my $current_line = "";

    # TODO: Process configuration options
    while ($current_line = <CONFIG_FILE>) {
        chomp $current_line;

        if ($current_line =~ m/(?<Key>.*)=(?<Value>.*)/g) {
            say "$+{Key}: $+{Value}";
        }
    }
}

# TODO: Actually use configuration file
# ...
