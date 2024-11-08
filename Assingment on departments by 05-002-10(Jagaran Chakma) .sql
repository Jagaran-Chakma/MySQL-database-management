
CREATE DATABASE department_entities;


CREATE TABLE department(
	id int PRIMARY KEY auto_increment,
	name VARCHAR(20) NOT NULL,
	est_data DATE NOT NULL,
	dept_of_head VARCHAR(40) NOT NULL
);
CREATE TABLE faculty(
    id int PRIMARY KEY auto_increment,
    name VARCHAR(20) NOT NULL,
    dept_id INT(20) NOT NULL,
    salary DECIMAL(10,2) NOT NULL,
    research varchar(20) NOT NULL,
    address VARCHAR(40) NOT NULL,
    contact varchar(20) NOT NULL, 
	FOREIGN KEY(dept_id) REFERENCES department(id)
);
CREATE TABLE student(
    id int PRIMARY KEY auto_increment,
    name VARCHAR(20) NOT NULL,
    roll VARCHAR(10) NOT NULL,
    age INTEGER(10) NOT NULL,
    semester INT(20) NOT NULL,
    email varchar(20) NOT NULL,
    address VARCHAR(40) NOT NULL	
   
);
CREATE TABLE course(
	id int(20) PRIMARY KEY auto_increment,
	title varchar(20) NOT NULL,
	duration time NOT NULL,
	code int(10) NOT NULL
   
);
CREATE TABLE exam(
	 id int PRIMARY key auto_increment,
	 student_id int(20) NOT NULL,
	 course_id int(20) NOT NULL,
  	 room_no int(20) NOT NULL,
	 FOREIGN key(course_id) REFERENCES course(id),
	 FOREIGN KEY(student_id) REFERENCES student(id)
);
CREATE TABLE assessments(
    id INT PRIMARY KEY AUTO_INCREMENT, 
    course_id INT(20) NOT NULL,
    student_id INT(20) not null, 
    total_marks INT(20) NOT NULL ,
	FOREIGN KEY(course_id) REFERENCES course(id),
	FOREIGN KEY(student_id) REFERENCES student(id)
);
CREATE TABLE results(
   id INT PRIMARY KEY AUTO_INCREMENT,
   assessment_id INT(20) NOT NULL,
   marks_obtained INT(20) NOT NULL,
   FOREIGN KEY(assessment_id) REFERENCES assessments(id)

  
);

-- Dumping data for table `course`
INSERT INTO `course` (`id`, `title`, `code`, `duration`) VALUES
(1, 'Statistical inferenc', 'Stat-301', '75:35:35'),
(2, 'Time Series Analysis', 'Stat-305', '79:43:23'),
(3, 'Calculus', 'Stat-104', '08:26:23');
-- Dumping data for table `department`

INSERT INTO `department` (`id`, `name`, `est_data`, `dept_of_head`) VALUES
(3, 'Statistics', '2018', 'Donald J. Trump'),
(4, 'History', '2013', 'David Luis'),
(5, 'Political Science', '2016', 'Sohel Sir'),
(6, 'Mathematics', '2012', 'David Luis');

-- Dumping data for table `student`
INSERT INTO `student` (`id`, `name`, `roll`, `age`, `semester`, `email`, `address`) VALUES
(1, 'Neymar Junior', '21STA-012', 23, 3, 'brushfasjfhahj@gmail', 'Brazil'),
(2, 'Cristiano Ronaldo', '21Stat-32', 25, 5, 'cristiano@gmail.com', 'Portugal'),
(3, 'Halland', '21Pol-21', 23, 3, 'brushfasjfhahj@gmail', 'Norway'),
(4, 'Vinicious Junior', '18His-31', 25, 5, 'vinicius.j@gmail.com', 'Brazil');

-- Dumping data for table `faculty`
INSERT INTO `faculty` (`id`, `name`, `dept_id`, `salary`, `research`, `address`, `contact`) VALUES
(1, 'Mr Haque', 3, 45000.00, 'Social Science', 'Barishal', '0132785354'),
(2, 'King Khan', 3, 89000.00, 'Public Health', 'Dhaka', '0183328423'),
(3, 'Dr. Ubaida', 3, 50000.00, 'Numerical analysis', 'Rajshahi', '0123412354'),
(4, 'Prof. Taj', 5, 89000.00, 'Political Psychology', 'Dhaka', '01423423544');


-- Dumping data for table `exam`
INSERT INTO `exam` (`id`, `student_id`, `course_id`, `room_no`) VALUES
 (NULL, '1', '1', '4004'),
 (NULL, '4', '2', '4232'), 
 (NULL, '3', '1', '3434'),
 (NULL, '1', '3', '3432');

-- Dumping data for table `assessments`
INSERT INTO `assessments` (`id`, `course_id`, `student_id`, `total_marks`) VALUES 
(NULL, '1', '3', '67'),
 (NULL, '3', '3', '70'), 
 (NULL, '2', '2', '80'), 
 (NULL, '3', '3', '55')