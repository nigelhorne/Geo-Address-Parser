use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => 'Geo::Address::Parser',
    VERSION_FROM => 'lib/Geo/Address/Parser.pm', # finds $VERSION
    ABSTRACT     => 'Lightweight country-aware address parser from flat text input',
    AUTHOR       => 'Nigel Horne <njh@nigelhorne.com>',
    LICENSE      => 'perl',

    PREREQ_PM    => {
        'Carp'            => 0,
        'Module::Runtime' => 0,
        'Exporter'        => 0,
        'Test::More'      => 0,
    },

    META_MERGE => {
        resources => {
            repository => 'https://github.com/nigelhorne/Geo-Address-Parser',
            bugtracker => 'https://github.com/nigelhorne/Geo-Address-Parser/issues',
            license    => 'http://dev.perl.org/licenses/',
        },
    },
);
