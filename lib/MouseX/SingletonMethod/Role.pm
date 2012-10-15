package MouseX::SingletonMethod::Role;
use strict;
use warnings;
use Mouse::Role;

my $singleton = sub {
    my $self = shift;
    my $methods = shift || {};

    my $meta = $self->meta->create_anon_class(
        superclasses => [ $self->meta->name ],
        methods      => $methods,
    );
    $meta->add_method( meta => sub {$meta} );

    bless $self, $meta->name;
};

sub become_singleton {
    $_[0]->$singleton;
}

sub add_singleton_method {
    $_[0]->$singleton( { $_[1] => $_[2] } );
}

sub add_singleton_methods {
    my $self = shift;
    $self->$singleton( {@_} );
}

no Mouse::Role;
1;
__END__
