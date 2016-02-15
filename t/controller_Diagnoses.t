use strict;
use warnings;
use Test::More;


use Catalyst::Test 'Brainbase';
use Brainbase::Controller::Diagnoses;

ok( request('/diagnoses')->is_success, 'Request should succeed' );
done_testing();
