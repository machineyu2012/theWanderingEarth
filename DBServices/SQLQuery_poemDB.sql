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
values ('01','��ʫ�ʰ�"���˵���"��<br /> <span style="font-size: 18px; color: grey">
			-���� </span><br /> <br /> ���紵�嶫���ӣ��������׷��ࡣ <br /> �����ǼʼҺ�ȥ���������γ����ӡ�')

