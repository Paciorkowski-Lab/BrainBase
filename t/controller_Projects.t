use strict;
use warnings;
use Test::More;


use Catalyst::Test 'Brainbase';
use Brainbase::Controller::Projects;

ok( request('/projects')->is_success, 'Request should succeed' );
done_testing();
