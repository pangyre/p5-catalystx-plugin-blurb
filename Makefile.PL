use inc::Module::Install;

name 'CatalystX-Plugin-Blurb';
all_from 'lib/CatalystX/Plugin/Blurb.pm';

requires 'Catalyst::Runtime';
test_requires 'Test::WWW::Mechanize::Catalyst';
test_requires 'Test::More';
test_requires 'ok';

WriteAll();

if ( $Module::Install::AUTHOR )
{
    system("pod2text lib/CatalystX/Plugin/Blurb.pm > README") == 0
        or die "Couldn't update the README";
}
