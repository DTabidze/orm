drop table if exists course_registrations;
drop table if exists courses;
drop table if exists instructors;
drop table if exists students;

create table courses(
    id integer primary key,
    title text not null unique,
    date_created text default CURRENT_TIMESTAMP not null,
    date_updated text,
    instructor_id integer,
    foreign key(instructor_id) references instructors(id)
);
CREATE TRIGGER update_date_updated UPDATE OF title ON courses
    BEGIN
        UPDATE courses set date_updated=CURRENT_TIMESTAMP WHERE title=old.title;
    END;

Create table instructors(
    id integer primary key,
    fname text not null,
    middle_initial text,
    lname text not null,
    age integer CHECK(age>=18),
    tenured integer check(tenured==0 or tenured==1) default 0
);

create table students(
    id integer primary key,
    fname text not null check(length(fname)>2 and length(fname)<50),
    middle_initial text check(length(middle_initial)==1),
    lname text not null,
    age integer CHECK(age>=18),
    registered integer CHECK(registered==0 or registered==1) default 0
);

create table course_registrations(
    student_id integer not null,
    course_id integer not null,
    date_registered text not null default CURRENT_TIMESTAMP,
    foreign key(course_id) references courses(id),
    foreign key(student_id) references students(id)
);

