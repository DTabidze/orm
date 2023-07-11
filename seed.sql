PRAGMA foreign_keys="ON";

insert into courses(title) values("math");
insert into courses(title) values("science");
insert into courses(title) values("social studies");
insert into courses(title) values("english");

insert into instructors(fname,lname,age) values("Maria","Garcia",35);
insert into instructors(fname,lname,age) values("Bob","Miller",40);
insert into instructors(fname,lname,age) values("Kelly","Smith",50);

update courses set instructor_id=1 WHERE courses.title="english";
update courses set instructor_id=3 WHERE courses.title="science";
update courses set instructor_id=3 WHERE courses.title="math";
update courses set instructor_id=2 where courses.title="social studies";

insert into students(fname,lname,age) values("Angela","Smith",18);
insert into students(fname,lname,age) values("Tom","Hanks",23);
insert into students(fname,lname,age) values("Mary","Johnson",27);

insert into course_registrations(student_id,course_id,date_registered) values(1,1,CURRENT_TIMESTAMP);
insert into course_registrations(student_id,course_id,date_registered) values(2,1,CURRENT_TIMESTAMP);
insert into course_registrations(student_id,course_id,date_registered) values(2,4,CURRENT_TIMESTAMP);