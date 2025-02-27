CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT,
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

INSERT INTO Members (id, name, age) VALUES
(1, 'John brown', 30),
(2, 'Jane do', 25),
(3, 'Alice Johnson', 35),
(4, 'Bob Brown', 28);

INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity) VALUES
(1, 1, '2025-03-01', '08:00 AM', 'Cardio'),
(2, 2, '2025-03-02', '09:00 AM', 'Strength Training'),
(3, 3, '2025-03-03', '10:00 AM', 'Weightlifting'),
(4, 4, '2025-03-04', '07:00 AM', 'Cycling');


UPDATE WorkoutSessions
SET session_time = '05:00 PM'
WHERE member_id = 2 AND session_date = '2025-03-02';

DELETE FROM WorkoutSessions
WHERE member_id = 1;

DELETE FROM Members
WHERE id = 1;