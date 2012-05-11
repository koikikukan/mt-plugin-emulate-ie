package EmulateIE::CMS;

use strict;

sub add_meta {
    my ($cb, $app, $template) = @_;

    my $old;
    my $new;

    $old = <<HTML;
<head>
HTML
    $old = quotemeta($old);

    if ( MT->VERSION < 5.0 ) {
        $new = <<HTML;
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
HTML
    } else {
        $new = <<HTML;
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=EmulateIE8" />
HTML
    }
    $$template =~ s/$old/$new/;
}

1;
