use inc::Module::Install;
name 'MouseX-SingletonMethod';
all_from 'lib/MouseX/SingletonMethod.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';
auto_set_repository;
auto_include;
WriteAll;
