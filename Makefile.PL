use ExtUtils::MakeMaker;

WriteMakefile(
    NAME              => 'Mafia',
    VERSION_FROM      => 'lib/Mafia.pm',
	ABSTRACT_FROM     => 'lib/Mafia.pm',
	AUTHOR            => 'Marius Gavrilescu <marius@ieval.ro>',
	MIN_PERL_VERSION  => '5.14.0',
	LICENSE           => 'perl',
    PREREQ_PM         => {
	  Storable => 0,
	},
	BUILD_REQUIRES => {
	  File::Basename => 0,
	  File::Slurp => 0,
	},
	META_ADD => {
	  resources => {
		repository => {
		  url => 'http://git.ieval.ro/git/mafia.git',
		  web => 'http://git.ieval.ro/?p=mafia.git',
		  type => 'git',
		}
	  }
	}
);
