use strict;
use warnings;
use Test::More;


use Catalyst::Test 'Brainbase';
use Brainbase::Controller::Display;

ok( request('/display')->is_success, 'Request should succeed' );
done_testing();
