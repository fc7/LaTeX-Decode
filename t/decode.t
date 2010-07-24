#
#===============================================================================
#
#         FILE:  decode.t
#
#  DESCRIPTION:  
#
#        FILES:  ---
#         BUGS:  ---
#        NOTES:  ---
#       AUTHOR:  YOUR NAME (), 
#      COMPANY:  
#      VERSION:  1.0
#      CREATED:  29/05/10 13:47:59
#     REVISION:  ---
#===============================================================================

use strict;
use warnings;
use utf8;

use Test::More tests => 1;                      # last test to print
use LaTeX::Decode;

my $strA = "\\S{}\\L    \\^e\\={\\i}\\u j\\`{i}\\H u\\o\\c{S}{\\u {v}}{\\~{\\i}}";

my $resA = '§Łêīj̆ìűøŞ{v̆}{ĩ}';

is( latex_decode($strA), $resA, '');
