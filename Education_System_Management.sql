-- Table to store student information
CREATE TABLE IF NOT EXISTS students (
    student_id INT PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL,
    date_of_birth DATE NOT NULL,
    enrollment_date DATE NOT NULL,
    program TEXT NOT NULL
);

-- Table to store course information
CREATE TABLE IF NOT EXISTS courses (
    course_id INT PRIMARY KEY,
    course_name TEXT NOT NULL,
    instructor TEXT NOT NULL,
    credits INT NOT NULL
);

-- Table to store enrollment information
CREATE TABLE IF NOT EXISTS enrollments (
    enrollment_id INT PRIMARY KEY,
    student_id INT NOT NULL,
    course_id INT NOT NULL,
    enrollment_date DATE NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);
