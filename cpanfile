requires 'Mouse';
requires 'Mouse::Role';
requires 'perl', 'v5.6.2';

on build => sub {
    requires 'Test::More', '0.98';
};
