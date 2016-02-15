package Brainbase::Controller::Search_id;
use Moose;
use namespace::autoclean;

BEGIN {extends 'Catalyst::Controller'; }

=head1 NAME

Brainbase::Controller::Search_id - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut

=head2 search_id

=cut

sub search_id :Path :Arg(0) {
	my ( $self, $c ) = @_;

	# Get the Subject ID from the user
	my $id = $c->request->params->{id};
	# If the ID is found in the form
	if ($id) {

		$c->stash(subjects => [
				$c->model('DB::Subject')
					->search({id => {'like', "%$id%"}})
				]);
			$c->stash(template => 'search/results.tt2');
		} else {
			# Don't do anything
			$c->stash(template => 'empty.tt2');
		}
	}

=head1 AUTHOR

Alex Paciorkowski

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
