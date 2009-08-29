use inc::Module::Install;

name 'CatalystX-Plugin-Blurb';
all_from 'lib/CatalystX/Plugin/Blurb.pm';

build_requires 'Catalyst::Runtime';
build_requires 'Test::WWW::Mechanize::Catalyst';
build_requires 'Test::More';
build_requires 'ok';

WriteAll();

if ( $Module::Install::AUTHOR )
{
    system("pod2text lib/CatalystX/Plugin/Blurb.pm > README") == 0
        or die "Couldn't update the README";
}
