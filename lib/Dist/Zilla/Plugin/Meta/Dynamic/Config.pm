package Dist::Zilla::Plugin::Meta::Dynamic::Config;

# ABSTRACT: set dynamic_config in resultant META files

use Moose;

has dynamic_config => (
	is => 'ro',
	isa => 'Bool',
	default => 1,
);

with 'Dist::Zilla::Role::Meta::Dynamic::Config';

__PACKAGE__->meta->make_immutable;
no Moose;

qq[I am an object in motion];

=pod

=head1 SYNOPSIS

  # In dist.ini

  [Meta::Dynamic::Config]

=head1 DESCRIPTION

Dist::Zilla::Plugin::Meta::Dynamic::Config is a L<Dist::Zilla> plugin that allows an author to
specify in the C<META.json> and/or C<META.yml> files produced by L<Dist::Zilla> that their
distribution performs some dynamic configuration as per L<CPAN::Meta::Spec>.

Normally this would not be required, but if you are providing your own C<Makefile.PL> or L<Build.PL>
and asking questions, sensing the environment, etc. to generate a list of prereqs then C<dynamic_config>
should be set to a true value to satisfy the Meta specification.

=head1 SEE ALSO

L<Dist::Zilla>

L<CPAN::Meta::Spec>

=cut
