package Brainbase::View::HTML;

use strict;
use warnings;

use base 'Catalyst::View::TT';

__PACKAGE__->config(
	# Commented out to enable manual specified template TEMPLATE_EXTENSION => '.tt2',
    render_die => 1,
	# Set location for TT files
    INCLUDE_PATH => [
	    Brainbase->path_to( 'root', 'src' ),
    ],
    # Set to 1 for detailed timer stats in your HTML as comments
    TIMER		=> 0,
    # Wrapper template located in 'root/src'
    WRAPPER => 'wrapper.tt2'
);

=head1 NAME

Brainbase::View::HTML - TT View for Brainbase

=head1 DESCRIPTION

TT View for Brainbase.

=head1 SEE ALSO

L<Brainbase>

=head1 AUTHOR

Alex Paciorkowski

=head1 LICENSE

This library is free software. You can redistribute it and/or modify
it under the same terms as Perl itself.

=cut

1;
