use strict;
use warnings;
use Test::More;


use Catalyst::Test 'Brainbase';
use Brainbase::Controller::Search_id;

ok( request('/search_id')->is_success, 'Request should succeed' );
done_testing();
