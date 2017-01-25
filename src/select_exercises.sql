use codeup_test_db;

# The name of all albums by Pink Floyd.
select name
from albums
where artist = 'Pink Floyd';

# The year Sgt. Pepper's Lonely Hearts Club Band was released
select release_date
from albums
where name like '%Lonely Hearts Club Band';

# The genre for Nevermind
select genre
from albums
where name = 'Nevermind';

# Which albums were released in the 1990s
select name
from albums
where release_date between 1990 and 1999;

# Which albums had less than 20 million certified sales
select name
from albums
where sales < 20000000;

# All the albums in the rock genre. Is this all the rock albums in the table?
select name
from albums
where genre like '%rock%';
