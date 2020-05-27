#!/usr/bin/env perl
use strict;
use warnings;
use v5.30;

# Default configuration filename
my $configuration_file = "sample.conf";

# TODO: Parse command-line options
#
# Regex Grammar:
# ^(-(?<ShortOption>(?<ShortOptionName>[A-Za-z]{1})[ ]?(?<ShortOptionValue>[A-Za-z0-9_-]+))|(?<LongOption>-{1}(?<LongOptionName>[a-z][a-z-]{3,})))|(?<EnvironmentVariable>(?<EnvironmentVariableName>[A-Za-z0-9_]+)(=(?<EnvironmentVariableValue>[A-Za-z0-9_ "=-]+))?)
#
# Test cases:
#   -a
#   --file=filename.c
#   CFLAGS="-O3 -mtune=intel"
#   -l 1
#   --length=14
#   -Wl,-L/usr/lib
#   --files=file1,file2,file3,file4
#
for my $arg (@ARGV) {
    # TODO: Process command-line arguments
    if ($arg =~ m/^(-(?<ShortOption>(?<ShortOptionName>[A-Za-z]{1})[ ]?(?<ShortOptionValue>[A-Za-z0-9_-]+))|(?<LongOption>-{1}(?<LongOptionName>[a-z][a-z-]{3,})))|(?<EnvironmentVariable>(?<EnvironmentVariableName>[A-Za-z0-9_]+)(=(?<EnvironmentVariableValue>[A-Za-z0-9_ "=-]+))?)/g) {
        if (defined($+{ShortOption})) {
            say "Short option: $+{ShortOption}";
        } elsif (defined($+{LongOption})) {
            say "Long option: $+{LongOption}";
        }
    }
}

# Open the configuration file
open CONFIG_FILE, '<:encoding(UTF-8)', $configuration_file or die("Failed to open file.");

# TODO: Figure out how strings are initialized properly
my $current_line = "";

# TODO: Process configuration options
while ($current_line = <CONFIG_FILE>) {
    chomp $current_line;

    if ($current_line =~ m/(?<Key>.*)=(?<Value>.*)/g) {
        say "$+{Key}: $+{Value}";
    }
}

# TODO: Actually use configuration file
# ...
