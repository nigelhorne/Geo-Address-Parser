use strict;
use warnings;
use ExtUtils::MakeMaker;

my $dist = {
	COMPRESS => 'gzip -9f',	# Compress tarball using gzip
	SUFFIX => 'gz',	# File suffix for tarball
};

if($^O eq 'darwin') {
	$dist->{'TAR'} = 'gtar';
}

WriteMakefile(
	NAME		 => 'Geo::Address::Parser',
	VERSION_FROM => 'lib/Geo/Address/Parser.pm', # finds $VERSION
	AUTHOR	   => 'Nigel Horne <njh@nigelhorne.com>',
	LICENSE	  => 'perl',
	ABSTRACT_FROM	=> 'lib/Geo/Address/Parser.pm',
	((defined($ExtUtils::MakeMaker::VERSION) && ($ExtUtils::MakeMaker::VERSION >= 6.3002))
		? ('LICENSE'=> 'GPL')
		: ()),
	CONFIGURE_REQUIRES => {
		'ExtUtils::MakeMaker' => 6.64,	# Minimum version for TEST_REQUIRES

	},
	PREREQ_PM	=> {
		'Carp'			=> 0,
		'Module::Runtime' => 0,
		'Exporter'		=> 0,
	}, TEST_REQUIRES => {
		'Test::Most'	  => 0,
	}, dist => $dist,
	clean		=> { FILES => 'Geo-Address-Parser-*' },
	META_MERGE => {
		resources => {
			repository => 'https://github.com/nigelhorne/Geo-Address-Parser',
			bugtracker => 'https://github.com/nigelhorne/Geo-Address-Parser/issues',
			license	=> 'http://dev.perl.org/licenses/',
		},
	},
);
