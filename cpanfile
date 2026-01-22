# Generated from Makefile.PL

requires 'CHI';
requires 'Carp';
requires 'ExtUtils::MakeMaker', '6.64';
requires 'JSON::MaybeXS';
requires 'LWP::UserAgent';
requires 'Object::Configure', '0.15';
requires 'Params::Get', '0.13';
requires 'Params::Validate::Strict', '0.28';
requires 'Scalar::Util';
requires 'Time::HiRes';

on 'configure' => sub {
	requires 'ExtUtils::MakeMaker', '6.64';
};
on 'test' => sub {
	requires 'File::Temp';
	requires 'Test::Compile';
	requires 'Test::DescribeMe';
	requires 'Test::HTML::Lint';
	requires 'Test::HTTPStatus';
	requires 'Test::JSON';
	requires 'Test::MockObject';
	requires 'Test::Most';
	requires 'Test::Needs';
	requires 'Test::RequiresInternet';
	requires 'Test::Warnings';
};
on 'develop' => sub {
	requires 'Devel::Cover';
	requires 'Perl::Critic';
	requires 'Test::Pod';
	requires 'Test::Pod::Coverage';
};
