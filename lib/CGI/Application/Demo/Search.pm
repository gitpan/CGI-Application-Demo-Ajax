package CGI::Application::Demo::Search;

# Author:
#	Ron Savage <ron@savage.net.au>
#
# Note:
#	\t = 4 spaces || die.

use base 'CGI::Application::Demo::Ajax';
use strict;
use warnings;

use JSON::XS;

our $VERSION = '1.00';

# -----------------------------------------------

sub search
{
	my($self)   = @_;
	my($output) = [];

	push @$output,
	{
		name => 'Ron',
		role => 'Programmer',
	};

	push @$output,
	{
		name => 'Zigzag',
		role => 'Dog',
	};

	$self -> log(__PACKAGE__ . '. Leaving search');

	# Notice the print. We do not use return for Ajax.

	print "Hello World";

#	print JSON::XS -> new() -> encode({results => $output});

} # End of search.

# -----------------------------------------------

1;
