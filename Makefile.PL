use 5.014000;
use ExtUtils::MakeMaker;

WriteMakefile(
	NAME              => 'Mafia',
	VERSION_FROM      => 'lib/Mafia.pm',
	ABSTRACT_FROM     => 'lib/Mafia.pm',
	AUTHOR            => 'Marius Gavrilescu <marius@ieval.ro>',
	MIN_PERL_VERSION  => '5.14.0',
	LICENSE           => 'perl',
	SIGN              => 1,
	PREREQ_PM         => {
		qw/Storable 0/,
	},
	BUILD_REQUIRES => {
		qw/File::Basename 0
		   File::Slurp 0/,
	},
	META_MERGE         => {
		dynamic_config => 0,
		resources      => {
			repository => 'http://git.ieval.ro/?p=mafia.git',
		}
	}
);
