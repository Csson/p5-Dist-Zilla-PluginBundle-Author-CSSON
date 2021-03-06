# This file was automatically generated by Dist::Zilla::Plugin::MakeMaker v5.043.
use strict;
use warnings;

use 5.010000;

use ExtUtils::MakeMaker;

my %WriteMakefileArgs = (
  "ABSTRACT" => "Dist::Zilla plugin list (deprecated)",
  "AUTHOR" => "Erik Carlsson <info\@code301.com>",
  "CONFIGURE_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0
  },
  "DISTNAME" => "Dist-Zilla-PluginBundle-Author-CSSON",
  "LICENSE" => "perl",
  "MIN_PERL_VERSION" => "5.010000",
  "NAME" => "Dist::Zilla::PluginBundle::Author::CSSON",
  "PREREQ_PM" => {
    "Config::INI" => 0,
    "Dist::Zilla::Role::PluginBundle::Config::Slicer" => 0,
    "Dist::Zilla::Role::PluginBundle::Easy" => 0,
    "Dist::Zilla::Role::PluginBundle::PluginRemover" => 0,
    "List::AllUtils" => 0,
    "Moose" => "2.1405",
    "MooseX::AttributeShortcuts" => "0.028",
    "Path::Tiny" => "0.072",
    "Types::Standard" => "1.000005",
    "namespace::autoclean" => "0.22"
  },
  "TEST_REQUIRES" => {
    "ExtUtils::MakeMaker" => 0,
    "File::Spec" => 0,
    "IO::Handle" => 0,
    "IPC::Open3" => 0,
    "Test::More" => "0.96"
  },
  "VERSION" => "0.1104",
  "test" => {
    "TESTS" => "t/*.t"
  }
);


my %FallbackPrereqs = (
  "Config::INI" => 0,
  "Dist::Zilla::Role::PluginBundle::Config::Slicer" => 0,
  "Dist::Zilla::Role::PluginBundle::Easy" => 0,
  "Dist::Zilla::Role::PluginBundle::PluginRemover" => 0,
  "ExtUtils::MakeMaker" => 0,
  "File::Spec" => 0,
  "IO::Handle" => 0,
  "IPC::Open3" => 0,
  "List::AllUtils" => 0,
  "Moose" => "2.1405",
  "MooseX::AttributeShortcuts" => "0.028",
  "Path::Tiny" => "0.072",
  "Test::More" => "0.96",
  "Types::Standard" => "1.000005",
  "namespace::autoclean" => "0.22"
);


unless ( eval { ExtUtils::MakeMaker->VERSION(6.63_03) } ) {
  delete $WriteMakefileArgs{TEST_REQUIRES};
  delete $WriteMakefileArgs{BUILD_REQUIRES};
  $WriteMakefileArgs{PREREQ_PM} = \%FallbackPrereqs;
}

delete $WriteMakefileArgs{CONFIGURE_REQUIRES}
  unless eval { ExtUtils::MakeMaker->VERSION(6.52) };

WriteMakefile(%WriteMakefileArgs);
