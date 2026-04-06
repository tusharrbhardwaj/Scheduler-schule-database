-- Base tables (Parent Tables) with no dependencies.

-- Table "group" to store group_ids of student groups according to which classes are assigned to studetns.
CREATE TABLE student_groups (
  group_id BIGSERIAL PRIMARY KEY
);


-- Table "classrooms" to store room related information like id, capacity, and room number.
CREATE TABLE classrooms (
  room_id BIGSERIAL PRIMARY KEY,
  cr_capacity BIGINT NOT NULL,
  cr_number VARCHAR(20) UNIQUE,

  -- Check if room capacity is always greate than 0 or not

  CHECK (cr_capacity > 0)
);


-- Table "timeslots" to store all timeslots with their ids, start and end_time for reliable assignment of timeslots to rooms and classes.
CREATE TABLE timeslots (
  timeslot_id BIGSERIAL PRIMARY KEY,
  day VARCHAR(10) NOT NULL,
  start_time TIME NOT NULL,
  end_time TIME NOT NULL,

  -- check time input to validate incoming start and end time of each slots 
  CHECK (start_time < end_time),

  -- check if the inputed day is valid or not

 CHECK (day IN ('Monday','Tuesday','Wednesday','Thursday','Friday'))
);


-- Table "professor" to store professors' details like their ids, and names
CREATE TABLE professor (
  prof_id BIGSERIAL PRIMARY KEY,
  prof_name VARCHAR(255) NOT NULL
);


-- Dependent tables 

-- Table "classes" which have a class_id, total number of students assigned to it and professor that would teach that class

CREATE TABLE classes (
  class_id BIGSERIAL PRIMARY KEY,
  total_students BIGINT NOT NULL,
  prof_id BIGINT NOT NULL,

  -- assigning prof_id as foreign key that would link it to prof_table

  FOREIGN KEY (prof_id)
  REFERENCES professor(prof_id)
  ON DELETE CASCADE
);


-- class group is a many-to-many table with a composite key

CREATE TABLE class_groups (
  class_id BIGINT NOT NULL,
  group_id BIGINT NOT NULL,

  -- Composite key
  PRIMARY KEY (class_id, group_id),
  
  -- assigning foreign key that would link it to their respective tables ie classes and groups

  FOREIGN KEY (class_id)
  REFERENCES classes(class_id)
  ON DELETE CASCADE,

  FOREIGN KEY (group_id)
  REFERENCES student_groups(group_id)
  ON DELETE CASCADE
);


-- Table "students" with information regarding students with groups as a foreign key

CREATE TABLE students (
  student_id BIGSERIAL NOT NULL UNIQUE,
  GH_id VARCHAR(10) PRIMARY KEY,
  group_id BIGINT NOT NULL,

  -- assigning group_id as foreign key that would link it to student_groups
  FOREIGN KEY (group_id)
  REFERENCES student_groups(group_id)
  ON DELETE CASCADE
);


-- Table prof_availablity for storing avalablity of professor accross week and days.

CREATE TABLE prof_availability (
  profavail_id BIGSERIAL PRIMARY KEY,
  prof_id BIGINT NOT NULL,
  day VARCHAR(10) NOT NULL,
  start_time TIME NOT NULL,
  end_time TIME NOT NULL,


  -- assigning prof_id as foreign key to connect to professor table
  FOREIGN KEY (prof_id)
  REFERENCES professor(prof_id)
  ON DELETE CASCADE,

  -- check time input to validate incoming start and end time of each slots 
  CHECK (start_time < end_time),

  -- check if the inputed day is valid or not

  CHECK (day IN ('Monday','Tuesday','Wednesday','Thursday','Friday'))
);


-- Joint table "schedule" which would be updates once algorithm run and decide which classes shall be scheduled and where.

CREATE TABLE schedule (
  schedule_id BIGSERIAL PRIMARY KEY,
  class_id BIGINT NOT NULL,
  room_id BIGINT NOT NULL,
  timeslot_id BIGINT NOT NULL,

  -- assigning foreign key that would link it to their respective tables ie classes and groups

  FOREIGN KEY (class_id)
  REFERENCES classes(class_id)
  ON DELETE CASCADE,

  FOREIGN KEY (room_id)
  REFERENCES classrooms(room_id)
  ON DELETE CASCADE,

  FOREIGN KEY (timeslot_id)
  REFERENCES timeslots(timeslot_id)
  ON DELETE CASCADE
);