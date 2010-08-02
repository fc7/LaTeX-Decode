use strict;
use warnings;
use utf8;

use Test::More tests => 1;
use LaTeX::Encode::More;


my $str  = '§Łêīj̆ìűøŞv̆ĩ¡œ±';
my $res = "{\\S}{\\L}\\^e\\={\\i}\\u{j}\\`{\\i}\\H{u}{\\o}\\c{S}\\u{v}\\~{\\i}{\\textexclamdown}{\\oe}{\\textpm}";

is( latex_encode($str), $res, 'encode');

