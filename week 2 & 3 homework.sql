
show databases;

create database TTACADEMY;


(week 2 task 1)


USE TTACADEMY;

CREATE TABLE MYROOMATES(
first_name varchar (50)primary key,
last_name varchar (50),
age int (20),
sex varchar (20),
country varchar (20)
);
 
 INSERT INTO MYROOMATES(first_name,last_name,age,sex,country)
 values 
 ('AMINA','KHAN',22,'FEMALE','UK'),
 ('SARA','KHAN',20,'FEMALE', 'UK'),
 ('ASIFA','NABEEL',21,'FEMALE','US'),
 ('BABAR','ALI',23,'MALE','US'),
 ('HAMID','ALI',22,'MALE','UK'),
 ('AQIB','KHAN',23,'MALE','UAE'),
 ('AMIR','KHAN',25,'MALE','UAE'),
 ('KHADIJA','SHAH',26,'FEMALE','PK'),
 ('HUMAYUN','SAEED',28,'MALE','USA'),
 ('SHAH','ZEB',25,'MALE','UK');

 
 SELECT *
 FROM MYROOMATES;

 SELECT AGE
 FROM MYROOMATES;

 
 SELECT AGE, SEX FROM MYROOMATES;

 SELECT AGE FROM MYROOMATES WHERE AGE > 22;

 SELECT AGE FROM MYROOMATES WHERE AGE <25;

 SELECT * FROM MYROOMATES WHERE age >20;

 UPDATE MYROOMATES
 SET AGE=23
 WHERE first_name='BABAR';

 DELETE FROM MYROOMATES
 WHERE first_name='BABAR';
 SELECT *
 FROM MYROOMATES;




 week 2 task 2


 use uni;

 select *
 from student
 where courseid <> 1;

 select 'firstname','surname',dateofbirth
 from student
 where EmailAddress='val.bolger@example.com'; 

 select *
 from module
 where Subject='economics';


select courseappliedfor,dateofapplication
 from application
 where dateofapplication>2020-09-21;


 week 2 task 3


 select count(studentid)
 from student;

 select sum('fulltimefee')
 from fees;

 select min('fulltimefee')
 from fees;

 select max(fulltimefee)
 from fees;

select avg(parttimecourse)
from fees;

 select courseid,fulltimefee-scholarshipdiscount
 from fees;

 select avg(parttimefee)
 from fees;

use uni;


select courseid,min(fulltimefee)

from fees; 

select courseid,max(fulltimefee-scholarshipdiscount)
from fees;

 week 2 task 4


 select*
 from application
 where courseappliedfor =11 and studentid=0 and accepted =1;


 select courseappliedfor,forenames,surname,emailaddress
 from application
 where courseappliedfor=11 and studentid=0 and accepted=1;


select * 
from application
where courseappliedfor=11 and accepted=0;






week 3 task 1 

select avg(fulltimefee)
from fees;

select * from fees where FullTimeFee<8416.6667;

select * from fees where fulltimefee>8416.6667;




select fulltimefee
from fees
order by fulltimefee asc;


task 2 

select *
from application
where courseappliedfor is null;

select *
from student
where courseid is null;

select *
from student
where dateofbirth=2002-06-00;

select * FROM application
where courseappliedfor is null and DateOfApplication between 2020-04-01 and 2020-07-31;



task 3


use uni;

select count(moduleid),courseid
from module
group by courseid;




select count(applicationid),courseappliedfor
from application
where accepted=1
group by CourseAppliedFor;


SELECT sum(joiningfee),supervisingstaff
from club
where active=1
GROUP by supervisingstaff;


task 4


use uni;


select *
from module
left join course
on module.courseid=course.courseid;


select *
from student
join application 
on student.studentid=application.studentID;


select classid,cdate,FeedbackScore
from schedule;


end of sql 1 & 2.