create table student(
        id varchar(3) primary key,
        sname varchar(10),
        age smallint,
        sex char(2));
        
create table course(
        id varchar(4) primary key,
        csubject varchar(5) unique,
        teacher varchar(5),
        description varchar(20));
        
 create table score(
        id varchar(3) primary key,
        student_id varchar(3),
        course_id varchar(4),
        foreign key(student_id) references student(id),
        foreign key(course_id) references course(id),
        score smallint);
