use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'App::xkcd',
    AUTHOR              => q{Magnus Woldrich <trapd00r@trapd00r.se>},
    VERSION_FROM        => './xkcd',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    EXE_FILES =>           ['xkcd'],
    PREREQ_PM => {
      'WWW::Mechanize'  => 0,
    },
    MAN1PODS            => {
      'xkcd'            => 'blib/man1/xkcd.1',
      },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'xkcd-*' },
);
