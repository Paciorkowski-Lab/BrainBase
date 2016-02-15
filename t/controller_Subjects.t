use strict;
use warnings;
use Test::More;


use Catalyst::Test 'Brainbase';
use Brainbase::Controller::Subjects;

ok( request('/subjects')->is_success, 'Request should succeed' );
done_testing();
