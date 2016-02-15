package Brainbase::Controller::Display;
use Moose;
use namespace::autoclean;

BEGIN {extends 'Catalyst::Controller'; }

=head1 NAME

Brainbase::Controller::Display - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut

=head2 list

Fetch all subjects and pass to subjects/list.tt2 in stash to be displayed

=cut

sub list :Local {
	my ($self, $c) = @_;

	$c->stash(subjects => [$c->model('DB::Subject')->all]);

	$c->stash(template => 'subjects/list.tt2');
}



=head1 AUTHOR

Alex Paciorkowski

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
