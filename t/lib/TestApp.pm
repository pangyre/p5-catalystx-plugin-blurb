package TestApp;
use strict;
use warnings;

use Catalyst qw(
                Unicode
                +CatalystX::Plugin::Blurb
                Session
                Session::Store::FastMmap
                Session::State::Cookie
                );

__PACKAGE__->setup();

1;
