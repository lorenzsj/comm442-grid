#!/usr/bin/perl
package Grid;

use strict;
use warnings;

# global variables
our $version = "0.1.0";

# begin_html(): Print the HTML header  
# arguments 1. title
# No return.  Prints to the screen.
sub begin_html {
my $title;
    
$title = $_[0];      
print <<EOT;
Content-type: text/html

<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Grid</title>
<meta name="description" content="Grid $version">
<meta name="author" content="Stephen Lorenz">
   
<link rel="stylesheet" href="css/styles.css?v=1.0">
  
<!--[if lt IE 9]>
<script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.js"></script>
<![endif]-->
</head>
EOT
}

1
