CREATE DATABASE Fitness_Center_DB;

CREATE TABLE Members(
	id INT PRIMARY KEY auto_increment,
    name VARCHAR(255) NOT NULL,
	age INT NULL);
    
CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY auto_increment,
    member_id INT,
    session_date DATE NOT NULL,
    session_time VARCHAR(50) NOT NULL,
    activity VARCHAR(255) NULL,
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

select * from members;

select * from workoutsessions;

-- Task 1 --

INSERT INTO members (name, age)
VALUES ('John Doe', 35), ('Carol White', 28), ('Bob Cringle', 42);

INSERT INTO members (name, age)
Values ('John Smith', 49);

update members
set name = 'Jane Doe'
where id = 4;

INSERT INTO workoutsessions (member_id, session_date, session_time, activity)
VALUES (1, '2024-9-17', '8:30', 'aerobics'),
(1, '2024-9-19', '8:30', 'bench press'),
(2, '2024-9-2', '4:30', 'yoga'),
(3, '2024-9-19', '12:00', 'aerobics');

INSERT INTO workoutsessions (member_id, session_date, session_time, activity)
Values (4, '2024-9-24', '9:00', 'marathon training');
 
-- Task 2 --

UPDATE workoutsessions
set session_time = '10:30'
where member_id = 4;

-- Task 3 --  

DELETE FROM members
WHERE id = 7;