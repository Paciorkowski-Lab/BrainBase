package Brainbase::Controller::Root;
use Moose;
use namespace::autoclean;

BEGIN { extends 'Catalyst::Controller' }

#
# Sets the actions in this controller to be registered with no prefix
# so they function identically to actions created in MyApp.pm
#
__PACKAGE__->config(namespace => '');

=head1 NAME

Brainbase::Controller::Root - Root Controller for Brainbase

=head1 DESCRIPTION

[enter your description here]

=head1 METHODS

=head2 auto

Check if there is a user and if not forward to login page

=cut

sub auto :Private {
	my ($self, $c) = @_;

	# Allow unauthenticated users to reach the login page. 
	if ($c->controller eq $c->controller('Login')) {
		return 1;
	}

	# If a user doesn't exist, force login
	if (!$c->user_exists) {
		# Dump a log message to the development server debug output
		$c->log->debug('***Root::auto User not found, forwarding to /login');
		# Redirect the user to the login page
		$c->response->redirect($c->uri_for('/login'));
		# Return 0 to cancel 'post-auto' processing and prevent use of app
		return 0;
	}

	# User found, so return 1 and continue with processing after this 'auto'
	return 1;
}

=head2 base

Place a common logic to start chained dispatch here

=cut

sub base :Chained('/') :PathPart('subjects') :CaptureArgs(0) {
	my ($self, $c) = @_;

	$c->stash(resultset=> $c->model('DB::Subject'));

	$c->log->debug('*** INSIDE BASE METHOD ***');
}

=head2 object

Fetch the specified subject object based on the ID and store it in stash

=cut

sub object :Chained('base') :PathPart('id') :CaptureArgs(1) {

	my ($self, $c, $id) = @_;

	$c->stash(object => $c->stash->{resultset}->find($id));

	$c->detach('/error_404') if !$c->stash->{object};

	$c->log->debug("*** INSIDE OBJECT METHOD for obj id=$id ***");
}

=head2 edit

Edit an existing object

=cut

sub edit :Chained('object') PathPart('edit') Args(0) {

	my ( $self, $c ) = @_;

	return $self->form($c, $c->stash->{object});
}


=head2 index

The root page (/)

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    # Hello World
    $c->response->body( $c->welcome_message );
}

=head2 home

The homepage

=cut

sub home :Global {
	my ( $self, $c ) = @_;

	$c->stash(template => 'home.tt2');
}

=head2 list

Fetch all subjects and pass to subjects/list.tt2 in stash to be displayed

=cut

sub list :Global {
	my ( $self, $c ) = @_;

	$c->stash(subjects => [$c->model('DB::Subject')->all]);

	$c->stash(template => 'subjects/list.tt2');
}

=head2 write

The write page

=cut

sub write :Global {
	my ( $self, $c ) = @_;

	$c->stash(template => 'write.tt2');
}

=head2 project

The projects page

=cut

sub project :Global {
	my ( $self, $c ) = @_;

	$c->stash(projects => [$c->model('DB::Project')->all]);

	$c->stash(template => 'projects/list.tt2');
}

=head2 diagnosis

The diagnosis page

=cut

sub diagnosis :Global {
	my ( $self, $c ) = @_;

	$c->stash(diagnoses => [$c->model('DB::Diagnosis')->all]);

	$c->stash(template => 'diagnoses/list.tt2');
}


=head2 help

The help page

=cut

sub help :Global {
	my ( $self, $c ) = @_;

	$c->stash(template => 'help.tt2');
}

=head2 default

Standard 404 error page

=cut

sub default :Path {
    my ( $self, $c ) = @_;
    $c->response->body( 'Page not found' );
    $c->response->status(404);
}

=head2 end

Attempt to render a view, if needed.

=cut

sub end : ActionClass('RenderView') {}

=head1 AUTHOR

Alex Paciorkowski

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
