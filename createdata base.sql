create database if not exists testdb;
use testdb;

create schema if not exists testschema;

create or replace table test(username char(100), upassword varchar(100), console_sign_in_URL varchar(100));

DESC table  test;

create  stage if not exists teststage;

list @teststage;

copy into test from @teststage/test_credentials.csv;

select $1, $2, $3 from @teststage/test_credentials.csv2;

copy into test from @teststage/test_credentials.csv2
FILE_FORMAT = (SKIP_HEADER = 1);

select * from test;

