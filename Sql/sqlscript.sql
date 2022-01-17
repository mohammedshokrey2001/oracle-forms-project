REM   Script: Session 01
REM   database f

CREATE TABLE Student 
( 
  stud_ID INT NOT NULL, 
  fname VARCHAR(255) NOT NULL, 
  lname VARCHAR(255) NOT NULL, 
  gender VARCHAR(255) NOT NULL, 
  age INT NOT NULL, 
  stud_number VARCHAR(255) NOT NULL, 
  stud_email VARCHAR(255) NOT NULL, 
  stud_pass VARCHAR(255) NOT NULL, 
  PRIMARY KEY (stud_ID) 
);

insert into student values (1,'abdallah', 'rashed','male',20,'01272149656','abdallah@gmail.com','123456');

insert into student values (2,'mohamed', 'eid','male',21,'0123561365','eid@gmail.com','123456');

insert into student values (3,'mohamed', 'sameeh','male',20,'01234567891','sameeh@gmail.com','123456');

insert into student values (4,'mohamed', 'shokery','male',21,'0987654321321','shokery@gmail.com','123456');

insert into student values (5,'karim', 'abo agiza','male',20,'01478523695','karim@gmail.com','123456');

CREATE TABLE Instructor 
( 
  ins_ID INT NOT NULL, 
  fname VARCHAR(255) NOT NULL, 
  lname VARCHAR(255) NOT NULL, 
  gender VARCHAR(255) NOT NULL, 
  age INT NOT NULL, 
  ins_number VARCHAR(255) NOT NULL, 
  ins_email VARCHAR(255) NOT NULL, 
  ins_pass VARCHAR(255) NOT NULL, 
  PRIMARY KEY (ins_ID) 
);

insert into instructor values (1,'nader', 'mahmoud','male',35,'05611698474','nader@gmail.com','123456');

insert into instructor values (2,'ahmed', 'mohamed','male',21,'0123561365','ahmed@gmail.com','123456');

insert into instructor values (3,'eslam', 'mohsen','male',20,'01234567891','eslam@gmail.com','123456');

insert into instructor values (4,'amr', 'rashed','male',21,'0987654321321','amr@gmail.com','123456');

insert into instructor values (5,'ashref', 'ahmed','male',20,'01478523695','ashref@gmail.com','123456');

insert into instructor values (6,'mohamed', 'ahmed','male',20,'12356146548','mohamed@gmail.com','123456');

CREATE TABLE Course 
( 
  course_ID INT NOT NULL, 
  course_name VARCHAR(255) NOT NULL, 
  course_desc VARCHAR(255) NOT NULL, 
  school_yr INT NOT NULL, 
  PRIMARY KEY (course_ID) 
);

insert into course values (1, 'database','this is database course',2021);

insert into course values (2, 'java','this is java fx course',2021);

insert into course values (3, 'AI','this is artificial intelligence course',2021);

insert into course values (4, 'OS','this is operating system course',2021);

insert into course values (5, 'software engineering','this is software engineering course',2021);

insert into course values (6, 'cloud computing','this is cloud computing course',2021);

CREATE TABLE Subjects 
( 
  sub_ID INT NOT NULL, 
  name VARCHAR(255) NOT NULL, 
  course_ID INT NOT NULL, 
  PRIMARY KEY (sub_ID), 
  FOREIGN KEY (course_ID) REFERENCES Course(course_ID) 
);

insert into subjects values (1,'sec database task 1', 1);

insert into subjects values (2,'lec database task 1', 1);

insert into subjects values (3,'sec database task 2', 1);

insert into subjects values (4,'lec database task 2', 1);

insert into subjects values (5,'sec java task 1', 2);

insert into subjects values (6,'lec java task 1', 2);

insert into subjects values (7,'sec java task 2', 2);

insert into subjects values (8,'lec java task 2', 2);

insert into subjects values (9,'sec AI task 1', 3);

insert into subjects values (10,'lec AI task 1', 3);

insert into subjects values (11,'sec AI task 2', 3);

insert into subjects values (12,'lec AI task 2', 3);

insert into subjects values (13,'sec OS task 1', 4);

insert into subjects values (14,'lec OS task 1', 4);

insert into subjects values (15,'sec OS task 2', 4);

insert into subjects values (16,'lec OS task 2', 4);

insert into subjects values (17,'sec software engineering task 1', 5);

insert into subjects values (18,'lec software engineering task 1', 5);

insert into subjects values (19,'sec software engineering task 2', 5);

insert into subjects values (20,'lec software engineering task 2', 5);

insert into subjects values (21,'sec Cloud Computing task 1', 6);

insert into subjects values (22,'lec Cloud Computing task 1', 6);

insert into subjects values (23,'sec Cloud Computing task 2', 6);

insert into subjects values (24,'lec Cloud Computing task 2', 6);

CREATE TABLE Transactions 
( 
  trans_ID INT NOT NULL, 
  trans_name VARCHAR(255) NOT NULL, 
  trans_date DATE NOT NULL, 
  stud_ID INT NOT NULL, 
  PRIMARY KEY (trans_ID), 
  FOREIGN KEY (stud_ID) REFERENCES Student(stud_ID) 
);

insert into transactions values (1,'enroll in course 1','01-AUG-17',1);

insert into transactions values (2,'enroll in course 2','01-AUG-17',1);

insert into transactions values (3,'enroll in course 3','01-AUG-17',1);

insert into transactions values (4,'enroll in course 4','01-AUG-17',1);

insert into transactions values (5,'enroll in course 5','01-AUG-17',1);

insert into transactions values (6,'enroll in course 6','01-AUG-17',1);

CREATE TABLE Schedules 
( 
  sched_ID INT NOT NULL, 
  day DATE NOT NULL, 
  time_start DATE NOT NULL, 
  time_end DATE NOT NULL, 
  course_ID INT NOT NULL, 
  sub_ID INT NOT NULL, 
  ins_ID INT NOT NULL, 
  stud_ID INT NOT NULL, 
  PRIMARY KEY (sched_ID), 
  FOREIGN KEY (course_ID) REFERENCES Course(course_ID), 
  FOREIGN KEY (sub_ID) REFERENCES Subjects(sub_ID), 
  FOREIGN KEY (ins_ID) REFERENCES Instructor(ins_ID), 
  FOREIGN KEY (stud_ID) REFERENCES Student(stud_ID) 
);

INSERT INTO schedules VALUES 
  (1,'10-OCT-17','10-OCT-17','1-JAN-18',1,1,1,1 
  );

  INSERT INTO schedules VALUES 
  (2,'10-OCT-17','10-OCT-17','1-JAN-18',1,2,2,2 
  );

  INSERT INTO schedules VALUES 
  (3,'10-OCT-17','10-OCT-17','1-JAN-18',1,3,3,3 
  );

  INSERT INTO schedules VALUES 
  (4,'10-OCT-17','10-OCT-17','1-JAN-18',1,4,4,4 
  );

  INSERT INTO schedules VALUES 
  (5,'10-OCT-17','10-OCT-17','1-JAN-18',1,5,5,5 
  );

  INSERT INTO schedules VALUES 
  (6,'10-OCT-17','10-OCT-17','1-JAN-18',2,6,6,1 
  );

    INSERT INTO schedules VALUES 
  (7,'10-OCT-17','10-OCT-17','1-JAN-18',2,7,1,1 
  );

    INSERT INTO schedules VALUES 
  (8,'10-OCT-17','10-OCT-17','1-JAN-18',2,8,2,2 
  );

    INSERT INTO schedules VALUES 
  (9,'10-OCT-17','10-OCT-17','1-JAN-18',2,9,3,3 
  );

    INSERT INTO schedules VALUES 
  (10,'10-OCT-17','10-OCT-17','1-JAN-18',2,10,4,4 
  );

    INSERT INTO schedules VALUES 
  (11,'10-OCT-17','10-OCT-17','1-JAN-18',2,11,5,5 
  );

    INSERT INTO schedules VALUES 
  (12,'10-OCT-17','10-OCT-17','1-JAN-18',2,12,6,1 
  );

    INSERT INTO schedules VALUES 
  (13,'10-OCT-17','10-OCT-17','1-JAN-18',2,13,1,1 
  );

    INSERT INTO schedules VALUES 
  (14,'10-OCT-17','10-OCT-17','1-JAN-18',2,14,2,2 
  );

    INSERT INTO schedules VALUES 
  (15,'10-OCT-17','10-OCT-17','1-JAN-18',2,15,3,3 
  );

    INSERT INTO schedules VALUES 
  (16,'10-OCT-17','10-OCT-17','1-JAN-18',2,16,4,4 
  );

    INSERT INTO schedules VALUES 
  (17,'10-OCT-17','10-OCT-17','1-JAN-18',2,17,5,5 
  );

    INSERT INTO schedules VALUES 
  (18,'10-OCT-17','10-OCT-17','1-JAN-18',2,18,6,1 
  );

    INSERT INTO schedules VALUES 
  (19,'10-OCT-17','10-OCT-17','1-JAN-18',2,19,1,1 
  );

    INSERT INTO schedules VALUES 
  (20,'10-OCT-17','10-OCT-17','1-JAN-18',2,20,2,2 
  );

    INSERT INTO schedules VALUES 
  (21,'10-OCT-17','10-OCT-17','1-JAN-18',2,21,3,3 
  );

    INSERT INTO schedules VALUES 
  (22,'10-OCT-17','10-OCT-17','1-JAN-18',2,22,4,4 
  );

    INSERT INTO schedules VALUES 
  (23,'10-OCT-17','10-OCT-17','1-JAN-18',2,23,5,5 
  );

commit


