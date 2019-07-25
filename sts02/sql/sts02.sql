use xe;
drop table day02;
CREATE TABLE `day02` (
	`num` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(10) NULL,
	`sub` VARCHAR(20) NULL DEFAULT '�������',
	`content` TEXT NULL,
	`nalja` DATETIME NULL,
	PRIMARY KEY (`num`)
) COLLATE='utf8_general_ci';

insert into day02 (name,sub,content,nalja) values ('tester1','����1', '����1', now());
insert into day02 (name,sub,content,nalja) values ('tester2','����2', '����2', now());
insert into day02 (name,sub,content,nalja) values ('tester3','����3', '����3', now());
insert into day02 (name,sub,content,nalja) values ('tester4','����4', '����4', now());
insert into day02 (name,sub,content,nalja) values ('tester5','����5', '����5', now());