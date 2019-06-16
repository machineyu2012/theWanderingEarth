create database poemDB
on primary
(
	name=poemDB,
	filename='d:\poemDB.mdf',
	size=5,
	maxsize=20,
	filegrowth=1
)
log on
(
	name=poemDB_log,
	filename='d:\poemDB_log.ldf',
	size=1,
	maxsize=20,
	filegrowth=1
)

use poemDB
create table poemGP
(
	poemID varchar(6) primary key,
	poemDetails varchar(1000),
)


insert into poemGP
values ('01','《诗词版"流浪地球"》<br /> <span style="font-size: 18px; color: grey">
			-郭鹏 </span><br /> <br /> 西风吹皱东方河，万年地球白发多。 <br /> 流浪星际家何去，满船清梦出银河。')

