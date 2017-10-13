
CREATE TABLE COURSES (
  id int NOT NULL,
  name varchar(250) NOT NULL,
  code varchar(250) NOT NULL,
  date_start  date NOT NULL,
  date_end date  NOT NULL,
  
CONSTRAINT COURSESPk PRIMARY KEY (id),
CONSTRAINT COURSESIdFk FOREIGN KEY (id) REFERENCES ATTENDANCE (id)

);

CREATE TABLE STUDENTS (
  id int NOT NULL,
  first_name varchar(250) NOT NULL,
  last_name varchar(250) NOT NULL,
  date_of_birth date NOT NULL,
  city varchar(250) NOT NULL,
  address varchar(250) NOT NULL,
  
CONSTRAINT STUDENTSPk PRIMARY KEY (id),
CONSTRAINT STUDENTSIdFk FOREIGN KEY (id) REFERENCES ATTENDANCE (id)

);

CREATE TABLE ATTENDANCE (
  id int NOT NULL,
  student_id int NOT NULL,
  course_id int NOT NULL,
  attendance_date date NOT NULL,
  
CONSTRAINT ATTENDANCEPk PRIMARY KEY (id)

);

/

CREATE SEQUENCE answer_seq
 START WITH     500
 INCREMENT BY   10
 NOCACHE
 NOCYCLE;

/

INSERT INTO COURSES (id,name,code,date_start,date_end) VALUES (answer_seq.nextval,'Business and Computing','BAC','23/05/17','23/05/18');
INSERT INTO COURSES (id,name,code,date_start,date_end) VALUES (answer_seq,'Computer Science','BAC','23/05/17','23/05/18');
INSERT INTO COURSES (id,name,code,date_start,date_end) VALUES (answer_seq,'Chemistry','BAC','23/05/17','23/05/18');
INSERT INTO COURSES (id,name,code,date_start,date_end) VALUES (answer_seq,'History','BAC','23/05/17','23/05/18');
INSERT INTO COURSES (id,name,code,date_start,date_end) VALUES (answer_seq,'Zoology','BAC','23/05/17','23/05/18');


