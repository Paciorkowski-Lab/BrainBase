package Brainbase::Controller::Login;
use Moose;
use namespace::autoclean;

BEGIN {extends 'Catalyst::Controller'; }

=head1 NAME

Brainbase::Controller::Login - Catalyst Controller

=head1 DESCRIPTION

Catalyst Controller.

=head1 METHODS

=cut


=head2 index

Login logic

=cut

sub index :Path :Args(0) {
    my ( $self, $c ) = @_;

    # Get username and password from form
    my $username = $c->request->params->{username};
    my $password = $c->request->params->{password};

    # If the username and password values were found in the form
    if ($username && $password) {
	    # Attempt to log the user in
	    if ($c->authenticate({ username => $username,
				    password => $password } )) {
		    # If successful, allow access to application
		    $c->response->redirect($c->uri_for('/home'));
		    return;
	    } else {
		    # Set an error message
		    $c->stash(error_msg => "Bad username or password.");
	    }
    } else {
	    # Set an error message
	    $c->stash(error_msg => "Please login.")
	    unless ($c->user_exists);
    }

    # If either of above don't work, send to login page
    $c->stash(template => 'login.tt2');
  

}


=head1 AUTHOR

Alex Paciorkowski

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

__PACKAGE__->meta->make_immutable;

1;
