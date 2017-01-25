use codeup_test_db;
drop table if exists albums;
create table albums(
id int unsigned not null AUTO_INCREMENT,
artist varchar(200) not null,
name varchar(200) not null,
release_date int not null,
sales float not null,
genre varchar(200) not null,
primary key(id)
);
