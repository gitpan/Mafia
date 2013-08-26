#!/usr/bin/perl -w
use File::Basename qw/fileparse/;
use File::Slurp qw/read_file/;
use Mafia;

my @examples;
BEGIN { @examples = map { s/\.pl//r } glob 't/examples/*.pl' };
use Test::More tests => scalar @examples;

for my $example (@examples) {
  my $out;
  close STDOUT;
  open STDOUT, '>', \$out;
  clean;

  my $ok = read_file "$example.out";
  eval scalar read_file "$example.pl";
  is $out, $ok, scalar fileparse $example
}
