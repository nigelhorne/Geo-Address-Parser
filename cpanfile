# Generated from Makefile.PL using makefilepl2cpanfile

requires 'perl', '5.14.0';

requires 'Carp';
requires 'Exporter';
requires 'Module::Runtime';
requires 'Object::Configure', '0.16';
requires 'Params::Get', '0.13';
requires 'Return::Set', '0.02';
requires 'Text::Capitalize';

on 'configure' => sub {
	requires 'ExtUtils::MakeMaker', '6.64';
};
on 'test' => sub {
	requires 'Getopt::Long';
	requires 'IPC::Open3';
	requires 'IPC::Run3';
	requires 'JSON::MaybeXS';
	requires 'Pod::Usage';
	requires 'Symbol';
	requires 'Test::DescribeMe';
	requires 'Test::Most';
	requires 'Test::Needs';
	requires 'Test::Returns';
	requires 'Test::Which';
};
on 'develop' => sub {
	requires 'Devel::Cover';
	requires 'Perl::Critic';
	requires 'Test::Pod';
	requires 'Test::Pod::Coverage';
};
