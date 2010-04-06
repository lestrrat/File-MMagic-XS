#!perl
use strict;
use Test::More (tests => 3);
BEGIN
{
    use_ok("File::MMagic::XS");
}

my $fm = File::MMagic::XS->new;
ok(!$fm->fsmagic("t/non-existent"));

my $error = $fm->error;
like( $error, qr/No such file/ );

