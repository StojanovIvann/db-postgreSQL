CREATE TABLE IF NOT EXISTS student (
	id SERIAL PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR (100) NOT NULL,
	date_of_birth DATE NOT NULL,
	enrolled_date DATE NOT NULL,
	ganeder VARCHAR(10) NOT NULL,
	
-- 	VARCHAR  bidejki ako e INT a nekoj od ovie broevi moze da pocnuva so 0 i nema da ja pokazuva 0-ta.
	national_id_number VARCHAR(100) NOT NULL,
	student_card_number VARCHAR(100) NOT NULL
	
 );
 
 CREATE TABLE IF NOT EXISTS teacher (
 	id SERIAL PRIMARY KEY,
	first_name VARCHAR(100) NOT NULL,
	last_name VARCHAR (100) NOT NULL,
	date_birth DATE NOT NULL,
	academic_rank VARCHAR(100) NOT NULL,
	hire_date DATE NOT NULL
	 
 ); 
 
 CREATE TABLE IF NOT EXISTS grade_details(
	 id SERIAL PRIMARY KEY,
	 grade_id INT NOT NULL,
	 achivement_type_id INT NOT NULL,
	 achivement_points DECIMAL NOT NULL,
	 achivement_max_points DECIMAL NOT NULL,
	 achimenet_date DATE NOT NULL
 );
 
 CREATE TABLE IF NOT EXISTS course (
 	id SERIAL PRIMARY KEY,
	 name VARCHAR (100) NOT NULL,
	 credit DECIMAL,
	 academic_year INT NOT NULL,
	 semestar SMALLINT 
 );
 
 CREATE TABLE IF NOT EXISTS grade (
 	id SERIAL PRIMARY KEY ,
	student_id INT NOT NULL,
	course_id INT NOT NULL,
	teacher_id INT NOT NULL,
	grade SMALLINT,
	comment TEXT,
	created_date DATE NOT NULL
	
 );
 
 CREATE TABLE IF NOT EXISTS achivement_type (
	id SERIAL PRIMARY KEY,
	 name VARCHAR(100) NOT NULL,
	 description TEXT,
	 participation_rate VARCHAR(100)
 );
 
 