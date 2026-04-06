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
