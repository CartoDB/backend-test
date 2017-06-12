drop database if exists backend;
drop role if exists backend;

create database backend;
create role backend with login password 'backend';
grant all privileges on database backend to backend;

-- Test
drop database if exists backend_test;
drop role if exists backend_test;

create database backend_test;
create role backend_test with login password 'backend_test';
grant all privileges on database backend_test to backend_test;
