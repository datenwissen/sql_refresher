drop table department purge;
create table department
( deptno number(3) primary key ,
  dname varchar2(50) not null,
  part number(3),
  build  varchar2(30))tablespace users;

insert into department 
values (101,'Computer Engineering',100,'Information Bldg');

insert into department
values (102,'Multimedia Engineering',100,'Multimedia Bldg');

insert into department
values (103,'Software Engineering',100,'Software Bldg');

insert into department
values (201,'Electronic Engineering',200,'Electronic Control Bldg');

insert into department
values (202,'Mechanical Engineering',200,'Machining Experiment Bldg');

insert into department
values (203,'Chemical Engineering',200,'Chemical Experiment Bldg');

insert into department
values (301,'Library and Information science',300,'College of Liberal Arts');

insert into department
values (100,'Department of Computer Information',10,null);

insert into department
values (200,'Department of Mechatronics',10,null);

insert into department
values (300,'Department of Humanity',null,null);

insert into department
values (10,'College of Engineering',null,null);

insert into department
values (20,'College of Liberal Arts',null,null);

commit;
