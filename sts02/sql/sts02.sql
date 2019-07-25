use xe;
drop table day02;
CREATE TABLE `day02` (
	`num` INT NOT NULL AUTO_INCREMENT,
	`name` VARCHAR(10) NULL,
	`sub` VARCHAR(20) NULL DEFAULT '力格绝澜',
	`content` TEXT NULL,
	`nalja` DATETIME NULL,
	PRIMARY KEY (`num`)
) COLLATE='utf8_general_ci';

insert into day02 (name,sub,content,nalja) values ('tester1','力格1', '郴侩1', now());
insert into day02 (name,sub,content,nalja) values ('tester2','力格2', '郴侩2', now());
insert into day02 (name,sub,content,nalja) values ('tester3','力格3', '郴侩3', now());
insert into day02 (name,sub,content,nalja) values ('tester4','力格4', '郴侩4', now());
insert into day02 (name,sub,content,nalja) values ('tester5','力格5', '郴侩5', now());