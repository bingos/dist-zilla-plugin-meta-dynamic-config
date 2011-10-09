package Dist::Zilla::Role::Meta::Dynamic::Config;

# ABSTRACT: set dynamic_config to true in resultant META files

use Moose::Role;
with 'Dist::Zilla::Role::MetaProvider';

requires 'dynamic_config';

sub metadata {
  my $self = shift;
  return {
    dynamic_config => $self->dynamic_config,
  };
}

1;

=pod

=head1 DESCRIPTION

Dist::Zilla::Role::Meta::Dynamic::Config is a L<Dist::Zilla> role that allows an author to
specify that their plugin performs some dynamic configuration as per L<CPAN::Meta::Spec>.

=head1 SEE ALSO

L<Dist::Zilla>

L<CPAN::Meta::Spec>

=cut

=for Pod::Coverage
metadata
=end
