# NAME

Dist::Zilla::PluginBundle::Author::CSSON - Dist::Zilla like Csson

# VERSION

version 0.1103

# SYNOPSIS

    ; in dist.ini
    [@Author::CSSON]

# DESCRIPTION

It is about the same as a dist.ini with these plugins specified:

    [Git::GatherDir]
    exclude_filename = Build.PL ; or equivalent
    exclude_filename = META.json
    exclude_filename = LICENSE
    exclude_filename = README.md

    [CopyFilesFromBuild]
    copy = META.json
    copy = LICENSE
    copy = Build.PL ; or equivalent

    [ReversionOnRelease]
    prompt = 1

    [OurPkgVersion]

    [NextRelease]
    format = %v  %{yyyy-MM-dd HH:mm:ss VVV}d

    [PreviousVersion::Changelog]
    [NextVersion::Semantic]
    major =
    minor = API Changes, New Features, Enhancements
    revision = Revision, Bug Fixes, Documentation, Meta
    format = %d.%02d%02d
    numify_version = 0

    [Git::Check]
    allow_dirty = dist.ini
    allow_dirty = Changes
    allow_dirty = META.json
    allow_dirty = README.md
    allow_dirty = Build.PL ; or equivalent

    ; if is_private == 0, see below
    [GithubMeta]
    issues = 1
    homepage = http://metacpan.org/release/dist-name

    [PodWeaver]
    config_bundle = @Author::CSSON

    [ReadmeAnyFromPod]
    filename = README.md
    type = markdown
    location = root

    [MetaNoIndex]
    directory = t
    directory = xt
    directory = inc
    directory = share
    directory = eg
    directory = examples

    [Prereqs::FromCPANfile]

    ; settable, see installer below
    [ModuleBuildTiny]

    [MetaJSON]

    [ContributorsFromGit]

    [Test::NoTabs]
    [Test::EOL]
    [Test::EOF]
    [PodSyntaxTests]
    [Test::Kwalitee::Extra]

    [MetaYAML]

    [License]

    [ExtraTests]

    [ShareDir]

    [Manifest]

    [ManifestSkip]

    [CheckChangesHasContent]

    [TestRelease]

    [ConfirmRelease]

    ; depends on is_private, see below
    [UploadToCPAN or UploadToStratopan]

    [Git::Commit]
    commit_msg = %v
    allow_dirty = dist.ini
    allow_dirty = Changes
    allow_dirty = META.json
    allow_dirty = README.md
    allow_dirty = Build.PL

    [Git::Tag]
    tag_format = %v
    tag_message =

    [Git::Push]
    remotes_must_exist = 0

# OPTIONS

## homepage

String. Default is the release's page on metacpan.org. Not set if `is_private` is true.

## installer

String. Default is [ModuleBuildTiny](https://metacpan.org/pod/Dist::Zilla::ModuleBuildTiny).

## is\_private

Boolean. Default is **0**.

If false: Adds github repository to meta, uses github as issue tracker, and includes [UploadToCPAN](https://metacpan.org/pod/Dist::Zilla::Plugin::UploadToCPAN).

If true: Adds no github information, and includes [UploadToStratopan](https://metacpan.org/pod/Dist::Zilla::Plugin::UploadToStratopan).

To remove [UploadToStratopan](https://metacpan.org/pod/Dist::Zilla::Plugin::UploadToStratopan), add this to your dist.ini:

    -remove = UploadToStratopan

To use [UploadToStratopan](https://metacpan.org/pod/Dist::Zilla::Plugin::UploadToStratopan), you need to specify `repo` and `stack` in dist.ini:

    UploadToStratopan.repo = ...
    UploadToStratopan.stack = ...

## is\_task

Boolean. Default is **0**.

If true, [Dist::Zilla::Plugin::TaskWeaver](https://metacpan.org/pod/Dist::Zilla::Plugin::TaskWeaver) is included instead of [Dist::Zilla::Plugin::PodWeaver](https://metacpan.org/pod/Dist::Zilla::Plugin::PodWeaver).

## weaver\_config

String. Default is [@Author::CSSON](https://metacpan.org/pod/Pod::Weaver::PluginBundle::Author::CSSON).

# SEE ALSO

[Dist::Zilla](https://metacpan.org/pod/Dist::Zilla)

[Pod::Weaver::PluginBundle::Author::CSSON](https://metacpan.org/pod/Pod::Weaver::PluginBundle::Author::CSSON)

# AUTHOR

Erik Carlsson <info@code301.com>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2015 by Erik Carlsson <info@code301.com>.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
