use codeup_test_db;


delete from albums
where release_date >1991;


delete from albums
where genre like '%disco%';


delete from albums
where artist like '%Whitney Houston%';

select * from albums;