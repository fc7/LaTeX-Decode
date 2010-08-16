use strict;
use warnings;
use utf8;
use Test::More tests => 3;
use Encode;
use File::Spec;
my $script = File::Spec->catfile(qw(bin latex2utf8));
my $file   = File::Spec->catfile(qw(t file.txt));
my $outputA = decode_utf8( `$^X -Mblib $script -b $file` );
my $expectedA = <<END
Ecclésiastique
Intentionalität
Möglichkeit
München
Vázques
María
Encyclopædia
Ṭūsī
©
END
;

is( $outputA, $expectedA, 'conversion with option -b' );

my $outputB = decode_utf8( `$^X -Mblib $script $file` );
my $expectedB = <<END
Eccl{é}siastique
Intentionalit{ä}t
M{ö}glichkeit
M{ü}nchen
V{á}zques
Mar{í}a
Encyclop{æ}dia
Ṭūs{ī}
{©}
END
;
is( $outputB, $expectedB, 'conversion without any option' );

my $outputC = decode_utf8( `$^X -Mblib $script -b -N NFD $file` );
my $expectedC = <<END
Ecclésiastique
Intentionalität
Möglichkeit
München
Vázques
María
Encyclopædia
Ṭūsī
©
END
;
is( $outputC, $expectedC, 'conversion with options -b -N NFD' );
