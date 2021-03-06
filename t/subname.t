use v6.*;
use Test;
use Sub::Util <subname>;

plan 3;

sub foo {};
class A { our sub bar {} }

is subname( { ... } ), '__ANON__', 'did we get __ANON__ for bare Callable?';
is subname( &foo ), 'GLOBAL::foo', 'did we get GLOBAL::foo?';
is subname( &A::bar ),   'A::bar', 'did we get A::bar?';

# vim: expandtab shiftwidth=4
