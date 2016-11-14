#!/usr/bin/perl
package Grid::Network;

use lib "/home/stevie/perl5/lib/perl5/";
use strict;
use warnings;
use Grid::Database;
use CGI;
use CGI::Session;
#se CGI::Session::Auth;

#my $query = CGI->new();

#y $session = CGI::Session("driver:MySQL", undef, {Handle=>$dbh}->new);
#my $sid = $session->id();

#my $cookie = $query->cookie(CGISESSI=>$session->id);
#print $query->header(-cookie=>$cookie);

# Send proper HTTP header with cookies:

# Storing data in the session:
# or
#

# Flush the data from memory to the storage driver at least before your
# program finishes since auto-flushing can be unreliable.

# Retrieving data:
#my $f_name = $session->param('f_name');
# or
#my $l_name = $session->param(-name=>'l_name');

# Clearing a certain session parameter:
# $session->clear(["l_name", "f_name"]);

# Expire '_is_logged_in' flag after 10 idle minutes:
#$session->expire('is_logged_in', '+10m')

# Expire the session itself after 1 idle hour:


sub sign_in {
  #my $l_name = $session->param(-name=>'username');
  my $username = $_[0] // "";
  my $password = $_[1] // "";

  print l_name;

  #Grid::Database::connect_database();

  if ($username eq "") {
    return "Please enter your username and password.";
  }

  if ($username =~ Grid::Database::get_username) {
    if ($password =~ Grid::Database::get_password) {
      #$session->param(-name=>'username', -value=>$username);
      #$session->expire('+1h');
      return "Welcome <b>$username</b>.";
    }
    else {
      return "Invalid password.";
    }
  }
  else {
    #print redirect(-url=>'Location: signup.cgi');
    return "Username does not exist.";
  }
}

sub sign_out {
  #$session->flush();
  Grid::Database::disconnect_database();
}

1;
