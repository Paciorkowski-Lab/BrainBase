package Brainbase::Controller::Diagnoses;
use Moose;
use namespace::autoclean;

BEGIN {extends 'Catalyst::Controller'; }

=head1 NAME

Brainbase::Controller::Diagnoses - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    $c->response->body('Matched Brainbase::Controller::Diagnoses in Diagnoses.');
}

sub list :Local {
	my ($self, $c) = @_;

	$c->stash(diagnoses => [$c->model('DB::Diagnosis')->all]);

	$c->stash(template => 'diagnoses/list.tt2');
}

sub diagnoses :Global {
	my ($self, $c, $diagnosis_code, $diagnosis_1, $diagnosis_2, $diagnosis_3, $diagnosis_4, $diagnosis_5) = @_;

	$c->stash(diagnoses => [
			$c->model('DB::Diagnosis')
				->search({diagnosis_code => {'like', "$diagnosis_code"}})
			]);
	$c->stash(subjects => [
			$c->model('DB::Subject')
				->search({diagnosis_1 => {'like', "$diagnosis_code"}}),

			$c->model('DB::Subject')
				->search({diagnosis_2 => {'like', "$diagnosis_code"}}),

			$c->model('DB::Subject')
				->search({diagnosis_3 => {'like', "$diagnosis_code"}}),

			$c->model('DB::Subject')
				->search({diagnosis_4 => {'like', "$diagnosis_code"}}),

			$c->model('DB::Subject')
				->search({diagnosis_5 => {'like', "$diagnosis_code"}})

			]);
	$c->stash(template => 'diagnoses/diagnosis.tt2');
}



=head1 AUTHOR

Alex Paciorkowski

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
