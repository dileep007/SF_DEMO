--liquibase formatted sql

-- changeset your_name:1001
CREATE TABLE student (
    student_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    email VARCHAR(100)
);

--rollback drop table student;

-- changeset your_name:1002
INSERT INTO student (student_id, first_name, last_name, age, email)
VALUES (1, 'John', 'Doe', 20, 'john.doe@example.com');

--rollback CREATE TABLE student (
    student_id INT,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    age INT,
    email VARCHAR(100)
);
