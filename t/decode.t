use strict;
use warnings;
use utf8;

use Test::More tests => 2;
use LaTeX::Decode;

my $strA = "\\S{}\\L    \\^e\\={\\i}\\u j\\`{i}\\H u\\o\\c{S}{\\u {v}}{\\~{\\i}}";

my $resA = '§Łêīj̆ìűøŞ{v̆}{ĩ}';
my $resB = '§Łêīj̆ìűøŞv̆ĩ';

is( latex_decode($strA), $resA, 'decode 1');
is( latex_decode($strA, strip_outer_braces => 1), $resB, 'decode 2: strip_outer_braces');
