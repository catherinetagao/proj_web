MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| cman               |
| db_pet             |
| dbpos              |
| dbpromo            |
| dbsystem           |
| ecommerce          |
| foms_db            |
| food               |
| information_schema |
| my_db              |
| mysql              |
| ordering_database  |
| performance_schema |
| php-crud           |
| phpmyadmin         |
| practice_db        |
| sampledb           |
| sos_db             |
| staff              |
| system_db          |
| test               |
+--------------------+
21 rows in set (0.003 sec)

MariaDB [(none)]> CREATE DATABASE test2;
Query OK, 1 row affected (0.002 sec)

MariaDB [(none)]> USE test2;
Database changed
MariaDB [test2]> SELECT DATABASE();
+------------+
| DATABASE() |
+------------+
| test2      |
+------------+
1 row in set (0.000 sec)

MariaDB [test2]> CREATE TABLE student(
    -> first_name VARCHAR(30) NOT NULL,
    -> last_name VARCHAR(30) NOT NULL,
    -> email VARCHAR(60) NULL,
    -> street VARCHAR(50) NOT NULL,
    -> city VARCHAR(40) NOT NULL,
    -> state CHAR(2) NOT NULL DEFAULT "PA",
    -> zip MEDIUMINT UNSIGNED NOT NULL,
    -> phone VARCHAR(20) NOT NULL,
    -> birth_date DATE NOT NULL,
    -> sex ENUM('M', 'F') NOT NULL,
    -> date_entered TIMESTAMP,
    -> lunch_cost FLOAT NULL,
    -> student_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY
    -> );
Query OK, 0 rows affected (0.049 sec)

MariaDB [test2]> DESCRIBE student;
+--------------+-----------------------+------+-----+---------------------+-------------------------------+
| Field        | Type                  | Null | Key | Default             | Extra                         |
+--------------+-----------------------+------+-----+---------------------+-------------------------------+
| first_name   | varchar(30)           | NO   |     | NULL                |                               |
| last_name    | varchar(30)           | NO   |     | NULL                |                               |
| email        | varchar(60)           | YES  |     | NULL                |                               |
| street       | varchar(50)           | NO   |     | NULL                |                               |
| city         | varchar(40)           | NO   |     | NULL                |                               |
| state        | char(2)               | NO   |     | PA                  |                               |
| zip          | mediumint(8) unsigned | NO   |     | NULL                |                               |
| phone        | varchar(20)           | NO   |     | NULL                |                               |
| birth_date   | date                  | NO   |     | NULL                |                               |
| sex          | enum('M','F')         | NO   |     | NULL                |                               |
| date_entered | timestamp             | NO   |     | current_timestamp() | on update current_timestamp() |
| lunch_cost   | float                 | YES  |     | NULL                |                               |
| student_id   | int(10) unsigned      | NO   | PRI | NULL                | auto_increment                |
+--------------+-----------------------+------+-----+---------------------+-------------------------------+
13 rows in set (0.027 sec)

MariaDB [test2]> INSERT INTO student VALUES('Dale', 'Cooper', 'dcooper@aol.com',
    -> '123 Main St', 'Yakima', 'WA', 98901, '792-223-8901', "1959-2-22",
    -> 'M', NOW(), 3.50, NULL);
Query OK, 1 row affected (0.012 sec)

MariaDB [test2]> INSERT INTO student VALUES('Harry', 'Truman', 'htruman@aol.com',
    -> '202 South St', 'Vancouver', 'WA', 98660, '792-223-9810', "1946-1-24",
    -> 'M', NOW(), 3.50, NULL);
Query OK, 1 row affected (0.008 sec)

MariaDB [test2]>
MariaDB [test2]> INSERT INTO student VALUES('Shelly', 'Johnson', 'sjohnson@aol.com',
    -> '9 Pond Rd', 'Sparks', 'NV', 89431, '792-223-6734', "1970-12-12",
    -> 'F', NOW(), 3.50, NULL);
Query OK, 1 row affected (0.002 sec)

MariaDB [test2]>
MariaDB [test2]> INSERT INTO student VALUES('Bobby', 'Briggs', 'bbriggs@aol.com',
    -> '14 12th St', 'San Diego', 'CA', 92101, '792-223-6178', "1967-5-24",
    -> 'M', NOW(), 3.50, NULL);
Query OK, 1 row affected (0.002 sec)

MariaDB [test2]>
MariaDB [test2]> INSERT INTO student VALUES('Donna', 'Hayward', 'dhayward@aol.com',
    -> '120 16th St', 'Davenport', 'IA', 52801, '792-223-2001', "1970-3-24",
    -> 'F', NOW(), 3.50, NULL);
Query OK, 1 row affected (0.001 sec)

MariaDB [test2]>
MariaDB [test2]> INSERT INTO student VALUES('Audrey', 'Horne', 'ahorne@aol.com',
    -> '342 19th St', 'Detroit', 'MI', 48222, '792-223-2001', "1965-2-1",
    -> 'F', NOW(), 3.50, NULL);
Query OK, 1 row affected (0.001 sec)

MariaDB [test2]>
MariaDB [test2]> INSERT INTO student VALUES('James', 'Hurley', 'jhurley@aol.com',
    -> '2578 Cliff St', 'Queens', 'NY', 11427, '792-223-1890', "1967-1-2",
    -> 'M', NOW(), 3.50, NULL);
Query OK, 1 row affected (0.001 sec)

MariaDB [test2]>
MariaDB [test2]> INSERT INTO student VALUES('Lucy', 'Moran', 'lmoran@aol.com',
    -> '178 Dover St', 'Hollywood', 'CA', 90078, '792-223-9678', "1954-11-27",
    -> 'F', NOW(), 3.50, NULL);
Query OK, 1 row affected (0.001 sec)

MariaDB [test2]>
MariaDB [test2]> INSERT INTO student VALUES('Tommy', 'Hill', 'thill@aol.com',
    -> '672 High Plains', 'Tucson', 'AZ', 85701, '792-223-1115', "1951-12-21",
    -> 'M', NOW(), 3.50, NULL);
Query OK, 1 row affected (0.001 sec)

MariaDB [test2]>
MariaDB [test2]> INSERT INTO student VALUES('Andy', 'Brennan', 'abrennan@aol.com',
    -> '281 4th St', 'Jacksonville', 'NC', 28540, '792-223-8902', "1960-12-27",
    -> 'M', NOW(), 3.50, NULL);
Query OK, 1 row affected (0.009 sec)

MariaDB [test2]> SELECT * FROM student;
+------------+-----------+------------------+-----------------+--------------+-------+-------+--------------+------------+-----+---------------------+------------+------------+
| first_name | last_name | email            | street          | city         | state | zip   | phone        | birth_date | sex | date_entered        | lunch_cost | student_id |
+------------+-----------+------------------+-----------------+--------------+-------+-------+--------------+------------+-----+---------------------+------------+------------+
| Dale       | Cooper    | dcooper@aol.com  | 123 Main St     | Yakima       | WA    | 98901 | 792-223-8901 | 1959-02-22 | M   | 2023-10-12 23:12:30 |        3.5 |          1 |
| Harry      | Truman    | htruman@aol.com  | 202 South St    | Vancouver    | WA    | 98660 | 792-223-9810 | 1946-01-24 | M   | 2023-10-12 23:12:51 |        3.5 |          2 |
| Shelly     | Johnson   | sjohnson@aol.com | 9 Pond Rd       | Sparks       | NV    | 89431 | 792-223-6734 | 1970-12-12 | F   | 2023-10-12 23:12:51 |        3.5 |          3 |
| Bobby      | Briggs    | bbriggs@aol.com  | 14 12th St      | San Diego    | CA    | 92101 | 792-223-6178 | 1967-05-24 | M   | 2023-10-12 23:12:51 |        3.5 |          4 |
| Donna      | Hayward   | dhayward@aol.com | 120 16th St     | Davenport    | IA    | 52801 | 792-223-2001 | 1970-03-24 | F   | 2023-10-12 23:12:51 |        3.5 |          5 |
| Audrey     | Horne     | ahorne@aol.com   | 342 19th St     | Detroit      | MI    | 48222 | 792-223-2001 | 1965-02-01 | F   | 2023-10-12 23:12:51 |        3.5 |          6 |
| James      | Hurley    | jhurley@aol.com  | 2578 Cliff St   | Queens       | NY    | 11427 | 792-223-1890 | 1967-01-02 | M   | 2023-10-12 23:12:51 |        3.5 |          7 |
| Lucy       | Moran     | lmoran@aol.com   | 178 Dover St    | Hollywood    | CA    | 90078 | 792-223-9678 | 1954-11-27 | F   | 2023-10-12 23:12:51 |        3.5 |          8 |
| Tommy      | Hill      | thill@aol.com    | 672 High Plains | Tucson       | AZ    | 85701 | 792-223-1115 | 1951-12-21 | M   | 2023-10-12 23:12:51 |        3.5 |          9 |
| Andy       | Brennan   | abrennan@aol.com | 281 4th St      | Jacksonville | NC    | 28540 | 792-223-8902 | 1960-12-27 | M   | 2023-10-12 23:12:52 |        3.5 |         10 |
+------------+-----------+------------------+-----------------+--------------+-------+-------+--------------+------------+-----+---------------------+------------+------------+
10 rows in set (0.001 sec)

MariaDB [test2]> CREATE TABLE class(
    -> name VARCHAR(30) NOT NULL,
    -> class_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY);
Query OK, 0 rows affected (0.037 sec)

MariaDB [test2]> show tables;
+-----------------+
| Tables_in_test2 |
+-----------------+
| class           |
| student         |
+-----------------+
2 rows in set (0.001 sec)

MariaDB [test2]> INSERT INTO class VALUES
    -> ('English', NULL), ('Speech', NULL), ('Literature', NULL),
    -> ('Algebra', NULL), ('Geometry', NULL), ('Trigonometry', NULL),
    -> ('Calculus', NULL), ('Earth Science', NULL), ('Biology', NULL),
    -> ('Chemistry', NULL), ('Physics', NULL), ('History', NULL),
    -> ('Art', NULL), ('Gym', NULL);
Query OK, 14 rows affected (0.010 sec)
Records: 14  Duplicates: 0  Warnings: 0

MariaDB [test2]> select * from class;
+---------------+----------+
| name          | class_id |
+---------------+----------+
| English       |        1 |
| Speech        |        2 |
| Literature    |        3 |
| Algebra       |        4 |
| Geometry      |        5 |
| Trigonometry  |        6 |
| Calculus      |        7 |
| Earth Science |        8 |
| Biology       |        9 |
| Chemistry     |       10 |
| Physics       |       11 |
| History       |       12 |
| Art           |       13 |
| Gym           |       14 |
+---------------+----------+
14 rows in set (0.000 sec)

MariaDB [test2]> CREATE TABLE test(
    -> date DATE NOT NULL,
    -> type ENUM('T', 'Q') NOT NULL,
    -> class_id INT UNSIGNED NOT NULL,
    -> test_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY);
Query OK, 0 rows affected (0.038 sec)

MariaDB [test2]> CREATE TABLE score(
    -> student_id INT UNSIGNED NOT NULL,
    -> event_id INT UNSIGNED NOT NULL,
    -> score INT NOT NULL,
    -> PRIMARY KEY(event_id, student_id));
Query OK, 0 rows affected (0.041 sec)

MariaDB [test2]> CREATE TABLE absence(
    -> student_id INT UNSIGNED NOT NULL,
    -> date DATE NOT NULL,
    -> PRIMARY KEY(student_id, date));
Query OK, 0 rows affected (0.028 sec)

MariaDB [test2]> ALTER TABLE test ADD maxscore INT NOT NULL AFTER type;
Query OK, 0 rows affected (0.022 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [test2]> DESCRIBE test;
+----------+------------------+------+-----+---------+----------------+
| Field    | Type             | Null | Key | Default | Extra          |
+----------+------------------+------+-----+---------+----------------+
| date     | date             | NO   |     | NULL    |                |
| type     | enum('T','Q')    | NO   |     | NULL    |                |
| maxscore | int(11)          | NO   |     | NULL    |                |
| class_id | int(10) unsigned | NO   |     | NULL    |                |
| test_id  | int(10) unsigned | NO   | PRI | NULL    | auto_increment |
+----------+------------------+------+-----+---------+----------------+
5 rows in set (0.026 sec)

MariaDB [test2]> INSERT INTO test VALUES
    -> ('2014-8-25', 'Q', 15, 1, NULL),
    -> ('2014-8-27', 'Q', 15, 1, NULL),
    -> ('2014-8-29', 'T', 30, 1, NULL),
    -> ('2014-8-29', 'T', 30, 2, NULL),
    -> ('2014-8-27', 'Q', 15, 4, NULL),
    -> ('2014-8-29', 'T', 30, 4, NULL);
Query OK, 6 rows affected (0.007 sec)
Records: 6  Duplicates: 0  Warnings: 0

MariaDB [test2]> select * FROM test;
+------------+------+----------+----------+---------+
| date       | type | maxscore | class_id | test_id |
+------------+------+----------+----------+---------+
| 2014-08-25 | Q    |       15 |        1 |       1 |
| 2014-08-27 | Q    |       15 |        1 |       2 |
| 2014-08-29 | T    |       30 |        1 |       3 |
| 2014-08-29 | T    |       30 |        2 |       4 |
| 2014-08-27 | Q    |       15 |        4 |       5 |
| 2014-08-29 | T    |       30 |        4 |       6 |
+------------+------+----------+----------+---------+
6 rows in set (0.000 sec)

MariaDB [test2]> ALTER TABLE score CHANGE event_id test_id
    -> INT UNSIGNED NOT NULL;
Query OK, 0 rows affected (0.026 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [test2]> DESCRIBE score;
+------------+------------------+------+-----+---------+-------+
| Field      | Type             | Null | Key | Default | Extra |
+------------+------------------+------+-----+---------+-------+
| student_id | int(10) unsigned | NO   | PRI | NULL    |       |
| test_id    | int(10) unsigned | NO   | PRI | NULL    |       |
| score      | int(11)          | NO   |     | NULL    |       |
+------------+------------------+------+-----+---------+-------+
3 rows in set (0.032 sec)

MariaDB [test2]> INSERT INTO score VALUES
    -> (1, 1, 15),
    -> (1, 2, 14),
    -> (1, 3, 28),
    -> (1, 4, 29),
    -> (1, 5, 15),
    -> (1, 6, 27),
    -> (2, 1, 15),
    -> (2, 2, 14),
    -> (2, 3, 26),
    -> (2, 4, 28),
    -> (2, 5, 14),
    -> (2, 6, 26),
    -> (3, 1, 14),
    -> (3, 2, 14),
    -> (3, 3, 26),
    -> (3, 4, 26),
    -> (3, 5, 13),
    -> (3, 6, 26),
    -> (4, 1, 15),
    -> (4, 2, 14),
    -> (4, 3, 27),
    -> (4, 4, 27),
    -> (4, 5, 15),
    -> (4, 6, 27),
    -> (5, 1, 14),
    -> (5, 2, 13),
    -> (5, 3, 26),
    -> (5, 4, 27),
    -> (5, 5, 13),
    -> (5, 6, 27),
    -> (6, 1, 13),
    -> (6, 2, 13),
    -> # Missed this day (6, 3, 24),
    -> (6, 4, 26),
    -> (6, 5, 13),
    -> (6, 6, 26),
    -> (7, 1, 13),
    -> (7, 2, 13),
    -> (7, 3, 25),
    -> (7, 4, 27),
    -> (7, 5, 13),
    -> # Missed this day (7, 6, 27),
    -> (8, 1, 14),
    -> # Missed this day (8, 2, 13),
    -> (8, 3, 26),
    -> (8, 4, 23),
    -> (8, 5, 12),
    -> (8, 6, 24),
    -> (9, 1, 15),
    -> (9, 2, 13),
    -> (9, 3, 28),
    -> (9, 4, 27),
    -> (9, 5, 14),
    -> (9, 6, 27),
    -> (10, 1, 15),
    -> (10, 2, 13),
    -> (10, 3, 26),
    -> (10, 4, 27),
    -> (10, 5, 12),
    -> (10, 6, 22);
Query OK, 57 rows affected (0.008 sec)
Records: 57  Duplicates: 0  Warnings: 0

MariaDB [test2]> INSERT INTO absence VALUES
    -> (6, '2014-08-29'),
    -> (7, '2014-08-29'),
    -> (8, '2014-08-27');
Query OK, 3 rows affected (0.009 sec)
Records: 3  Duplicates: 0  Warnings: 0

MariaDB [test2]> SELECT * FROM student;
+------------+-----------+------------------+-----------------+--------------+-------+-------+--------------+------------+-----+---------------------+------------+------------+
| first_name | last_name | email            | street          | city         | state | zip   | phone        | birth_date | sex | date_entered        | lunch_cost | student_id |
+------------+-----------+------------------+-----------------+--------------+-------+-------+--------------+------------+-----+---------------------+------------+------------+
| Dale       | Cooper    | dcooper@aol.com  | 123 Main St     | Yakima       | WA    | 98901 | 792-223-8901 | 1959-02-22 | M   | 2023-10-12 23:12:30 |        3.5 |          1 |
| Harry      | Truman    | htruman@aol.com  | 202 South St    | Vancouver    | WA    | 98660 | 792-223-9810 | 1946-01-24 | M   | 2023-10-12 23:12:51 |        3.5 |          2 |
| Shelly     | Johnson   | sjohnson@aol.com | 9 Pond Rd       | Sparks       | NV    | 89431 | 792-223-6734 | 1970-12-12 | F   | 2023-10-12 23:12:51 |        3.5 |          3 |
| Bobby      | Briggs    | bbriggs@aol.com  | 14 12th St      | San Diego    | CA    | 92101 | 792-223-6178 | 1967-05-24 | M   | 2023-10-12 23:12:51 |        3.5 |          4 |
| Donna      | Hayward   | dhayward@aol.com | 120 16th St     | Davenport    | IA    | 52801 | 792-223-2001 | 1970-03-24 | F   | 2023-10-12 23:12:51 |        3.5 |          5 |
| Audrey     | Horne     | ahorne@aol.com   | 342 19th St     | Detroit      | MI    | 48222 | 792-223-2001 | 1965-02-01 | F   | 2023-10-12 23:12:51 |        3.5 |          6 |
| James      | Hurley    | jhurley@aol.com  | 2578 Cliff St   | Queens       | NY    | 11427 | 792-223-1890 | 1967-01-02 | M   | 2023-10-12 23:12:51 |        3.5 |          7 |
| Lucy       | Moran     | lmoran@aol.com   | 178 Dover St    | Hollywood    | CA    | 90078 | 792-223-9678 | 1954-11-27 | F   | 2023-10-12 23:12:51 |        3.5 |          8 |
| Tommy      | Hill      | thill@aol.com    | 672 High Plains | Tucson       | AZ    | 85701 | 792-223-1115 | 1951-12-21 | M   | 2023-10-12 23:12:51 |        3.5 |          9 |
| Andy       | Brennan   | abrennan@aol.com | 281 4th St      | Jacksonville | NC    | 28540 | 792-223-8902 | 1960-12-27 | M   | 2023-10-12 23:12:52 |        3.5 |         10 |
+------------+-----------+------------------+-----------------+--------------+-------+-------+--------------+------------+-----+---------------------+------------+------------+
10 rows in set (0.001 sec)

MariaDB [test2]> SELECT FIRST_NAME, last_name
    -> FROM student;
+------------+-----------+
| FIRST_NAME | last_name |
+------------+-----------+
| Dale       | Cooper    |
| Harry      | Truman    |
| Shelly     | Johnson   |
| Bobby      | Briggs    |
| Donna      | Hayward   |
| Audrey     | Horne     |
| James      | Hurley    |
| Lucy       | Moran     |
| Tommy      | Hill      |
| Andy       | Brennan   |
+------------+-----------+
10 rows in set (0.001 sec)

MariaDB [test2]> RENAME TABLE
    -> absence to absences,
    -> class to classes,
    -> score to scores,
    -> student to students,
    -> test to tests;
Query OK, 0 rows affected (0.045 sec)

MariaDB [test2]> SELECT first_name, last_name, state
    -> FROM students
    -> WHERE state="WA";
+------------+-----------+-------+
| first_name | last_name | state |
+------------+-----------+-------+
| Dale       | Cooper    | WA    |
| Harry      | Truman    | WA    |
+------------+-----------+-------+
2 rows in set (0.002 sec)

MariaDB [test2]> SELECT first_name, last_name, birth_date
    -> FROM students
    -> WHERE YEAR(birth_date) >= 1965;
+------------+-----------+------------+
| first_name | last_name | birth_date |
+------------+-----------+------------+
| Shelly     | Johnson   | 1970-12-12 |
| Bobby      | Briggs    | 1967-05-24 |
| Donna      | Hayward   | 1970-03-24 |
| Audrey     | Horne     | 1965-02-01 |
| James      | Hurley    | 1967-01-02 |
+------------+-----------+------------+
5 rows in set (0.008 sec)

MariaDB [test2]> SELECT first_name, last_name, birth_date
    -> FROM students
    -> WHERE MONTH(birth_date) = 2 OR state="CA";
+------------+-----------+------------+
| first_name | last_name | birth_date |
+------------+-----------+------------+
| Dale       | Cooper    | 1959-02-22 |
| Bobby      | Briggs    | 1967-05-24 |
| Audrey     | Horne     | 1965-02-01 |
| Lucy       | Moran     | 1954-11-27 |
+------------+-----------+------------+
4 rows in set (0.008 sec)

MariaDB [test2]> SELECT last_name, state, birth_date
    -> FROM students
    -> WHERE DAY(birth_date) >= 12 && (state="CA" || state="NV");
+-----------+-------+------------+
| last_name | state | birth_date |
+-----------+-------+------------+
| Johnson   | NV    | 1970-12-12 |
| Briggs    | CA    | 1967-05-24 |
| Moran     | CA    | 1954-11-27 |
+-----------+-------+------------+
3 rows in set (0.001 sec)

MariaDB [test2]> SELECT last_name
    -> FROM students
    -> WHERE last_name IS NULL;
Empty set (0.008 sec)

MariaDB [test2]>
MariaDB [test2]> SELECT last_name
    -> FROM students
    -> WHERE last_name IS NOT NULL;
+-----------+
| last_name |
+-----------+
| Cooper    |
| Truman    |
| Johnson   |
| Briggs    |
| Hayward   |
| Horne     |
| Hurley    |
| Moran     |
| Hill      |
| Brennan   |
+-----------+
10 rows in set (0.001 sec)

MariaDB [test2]> SELECT first_name, last_name
    -> FROM students
    -> ORDER BY last_name;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Andy       | Brennan   |
| Bobby      | Briggs    |
| Dale       | Cooper    |
| Donna      | Hayward   |
| Tommy      | Hill      |
| Audrey     | Horne     |
| James      | Hurley    |
| Shelly     | Johnson   |
| Lucy       | Moran     |
| Harry      | Truman    |
+------------+-----------+
10 rows in set (0.001 sec)

MariaDB [test2]> SELECT first_name, last_name
    -> FROM students
    -> ORDER BY last_name;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Andy       | Brennan   |
| Bobby      | Briggs    |
| Dale       | Cooper    |
| Donna      | Hayward   |
| Tommy      | Hill      |
| Audrey     | Horne     |
| James      | Hurley    |
| Shelly     | Johnson   |
| Lucy       | Moran     |
| Harry      | Truman    |
+------------+-----------+
10 rows in set (0.001 sec)

MariaDB [test2]> SELECT first_name, last_name, state
    -> FROM students
    -> ORDER BY state DESC, last_name ASC;
+------------+-----------+-------+
| first_name | last_name | state |
+------------+-----------+-------+
| Dale       | Cooper    | WA    |
| Harry      | Truman    | WA    |
| James      | Hurley    | NY    |
| Shelly     | Johnson   | NV    |
| Andy       | Brennan   | NC    |
| Audrey     | Horne     | MI    |
| Donna      | Hayward   | IA    |
| Bobby      | Briggs    | CA    |
| Lucy       | Moran     | CA    |
| Tommy      | Hill      | AZ    |
+------------+-----------+-------+
10 rows in set (0.001 sec)

MariaDB [test2]> SELECT first_name, last_name
    -> FROM students
    -> LIMIT 5;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Dale       | Cooper    |
| Harry      | Truman    |
| Shelly     | Johnson   |
| Bobby      | Briggs    |
| Donna      | Hayward   |
+------------+-----------+
5 rows in set (0.000 sec)

MariaDB [test2]> SELECT first_name, last_name
    -> FROM students
    -> LIMIT 5, 10;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Audrey     | Horne     |
| James      | Hurley    |
| Lucy       | Moran     |
| Tommy      | Hill      |
| Andy       | Brennan   |
+------------+-----------+
5 rows in set (0.001 sec)

MariaDB [test2]> SELECT CONCAT(first_name, " ", last_name) AS 'Name',
    -> CONCAT(city, ", ", state) AS 'Hometown'
    -> FROM students;
+----------------+------------------+
| Name           | Hometown         |
+----------------+------------------+
| Dale Cooper    | Yakima, WA       |
| Harry Truman   | Vancouver, WA    |
| Shelly Johnson | Sparks, NV       |
| Bobby Briggs   | San Diego, CA    |
| Donna Hayward  | Davenport, IA    |
| Audrey Horne   | Detroit, MI      |
| James Hurley   | Queens, NY       |
| Lucy Moran     | Hollywood, CA    |
| Tommy Hill     | Tucson, AZ       |
| Andy Brennan   | Jacksonville, NC |
+----------------+------------------+
10 rows in set (0.001 sec)

MariaDB [test2]> SELECT last_name, first_name
    -> FROM students
    -> WHERE first_name LIKE 'D%' OR last_name LIKE '%n';
+-----------+------------+
| last_name | first_name |
+-----------+------------+
| Cooper    | Dale       |
| Truman    | Harry      |
| Johnson   | Shelly     |
| Hayward   | Donna      |
| Moran     | Lucy       |
| Brennan   | Andy       |
+-----------+------------+
6 rows in set (0.001 sec)

MariaDB [test2]> SELECT last_name, first_name
    -> FROM students
    -> WHERE first_name LIKE '___y';
+-----------+------------+
| last_name | first_name |
+-----------+------------+
| Moran     | Lucy       |
| Brennan   | Andy       |
+-----------+------------+
2 rows in set (0.001 sec)

MariaDB [test2]> SELECT DISTINCT state
    -> FROM students
    -> ORDER BY state;
+-------+
| state |
+-------+
| AZ    |
| CA    |
| IA    |
| MI    |
| NC    |
| NV    |
| NY    |
| WA    |
+-------+
8 rows in set (0.001 sec)

MariaDB [test2]> SELECT COUNT(DISTINCT state)
    -> FROM students;
+-----------------------+
| COUNT(DISTINCT state) |
+-----------------------+
|                     8 |
+-----------------------+
1 row in set (0.001 sec)

MariaDB [test2]>
MariaDB [test2]> SELECT COUNT(*)
    -> FROM students;
+----------+
| COUNT(*) |
+----------+
|       10 |
+----------+
1 row in set (0.001 sec)

MariaDB [test2]>
MariaDB [test2]> SELECT COUNT(*)
    -> FROM students
    -> WHERE sex='M';
+----------+
| COUNT(*) |
+----------+
|        6 |
+----------+
1 row in set (0.001 sec)

MariaDB [test2]> SELECT sex, COUNT(*)
    -> FROM students
    -> GROUP BY sex;
+-----+----------+
| sex | COUNT(*) |
+-----+----------+
| M   |        6 |
| F   |        4 |
+-----+----------+
2 rows in set (0.008 sec)

MariaDB [test2]> SELECT MONTH(birth_date) AS 'Month', COUNT(*)
    -> FROM students
    -> GROUP BY Month
    -> ORDER BY Month;
+-------+----------+
| Month | COUNT(*) |
+-------+----------+
|     1 |        2 |
|     2 |        2 |
|     3 |        1 |
|     5 |        1 |
|    11 |        1 |
|    12 |        3 |
+-------+----------+
6 rows in set (0.001 sec)

MariaDB [test2]> SELECT state, COUNT(state) AS 'Amount'
    -> FROM students
    -> GROUP BY state
    -> HAVING Amount > 1;
+-------+--------+
| state | Amount |
+-------+--------+
| CA    |      2 |
| WA    |      2 |
+-------+--------+
2 rows in set (0.009 sec)

MariaDB [test2]> SELECT
    -> test_id AS 'Test',
    -> MIN(score) AS min,
    -> MAX(score) AS max,
    -> MAX(score)-MIN(score) AS 'range',
    -> SUM(score) AS total,
    -> AVG(score) AS average
    -> FROM scores
    -> GROUP BY test_id;
+------+------+------+-------+-------+---------+
| Test | min  | max  | range | total | average |
+------+------+------+-------+-------+---------+
|    1 |   13 |   15 |     2 |   143 | 14.3000 |
|    2 |   13 |   14 |     1 |   121 | 13.4444 |
|    3 |   25 |   28 |     3 |   238 | 26.4444 |
|    4 |   23 |   29 |     6 |   267 | 26.7000 |
|    5 |   12 |   15 |     3 |   134 | 13.4000 |
|    6 |   22 |   27 |     5 |   232 | 25.7778 |
+------+------+------+-------+-------+---------+
6 rows in set (0.005 sec)

MariaDB [test2]> SELECT * FROM absences;
+------------+------------+
| student_id | date       |
+------------+------------+
|          6 | 2014-08-29 |
|          7 | 2014-08-29 |
|          8 | 2014-08-27 |
+------------+------------+
3 rows in set (0.003 sec)

MariaDB [test2]>
MariaDB [test2]> DESCRIBE scores;
+------------+------------------+------+-----+---------+-------+
| Field      | Type             | Null | Key | Default | Extra |
+------------+------------------+------+-----+---------+-------+
| student_id | int(10) unsigned | NO   | PRI | NULL    |       |
| test_id    | int(10) unsigned | NO   | PRI | NULL    |       |
| score      | int(11)          | NO   |     | NULL    |       |
+------------+------------------+------+-----+---------+-------+
3 rows in set (0.022 sec)

MariaDB [test2]>
MariaDB [test2]> SELECT student_id, test_id
    -> FROM scores
    -> WHERE student_id = 6;
+------------+---------+
| student_id | test_id |
+------------+---------+
|          6 |       1 |
|          6 |       2 |
|          6 |       4 |
|          6 |       5 |
|          6 |       6 |
+------------+---------+
5 rows in set (0.001 sec)

MariaDB [test2]>
MariaDB [test2]> INSERT INTO scores VALUES
    -> (6, 3, 24);
Query OK, 1 row affected (0.002 sec)

MariaDB [test2]>
MariaDB [test2]> DELETE FROM absences
    -> WHERE student_id = 6;
Query OK, 1 row affected (0.009 sec)

MariaDB [test2]> ALTER TABLE absences
    -> ADD COLUMN test_taken CHAR(1) NOT NULL DEFAULT 'F'
    -> AFTER student_id;
Query OK, 0 rows affected (0.021 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [test2]> ALTER TABLE absences
    -> MODIFY COLUMN test_taken ENUM('T','F') NOT NULL DEFAULT 'F';
Query OK, 2 rows affected (0.072 sec)
Records: 2  Duplicates: 0  Warnings: 0

MariaDB [test2]> ALTER TABLE absences
    -> DROP COLUMN test_taken;
Query OK, 0 rows affected (0.028 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [test2]> ALTER TABLE absences
    -> CHANGE student_id student_id INT UNSIGNED NOT NULL;
Query OK, 0 rows affected (0.017 sec)
Records: 0  Duplicates: 0  Warnings: 0

MariaDB [test2]> SELECT *
    ->     FROM scores
    ->     WHERE student_id = 4;
+------------+---------+-------+
| student_id | test_id | score |
+------------+---------+-------+
|          4 |       1 |    15 |
|          4 |       2 |    14 |
|          4 |       3 |    27 |
|          4 |       4 |    27 |
|          4 |       5 |    15 |
|          4 |       6 |    27 |
+------------+---------+-------+
6 rows in set (0.001 sec)

MariaDB [test2]>
MariaDB [test2]> UPDATE scores SET score=25
    -> WHERE student_id=4 AND test_id=3;
Query OK, 1 row affected (0.024 sec)
Rows matched: 1  Changed: 1  Warnings: 0

MariaDB [test2]> SELECT first_name, last_name, birth_date
    -> FROM students
    -> WHERE birth_date
    -> BETWEEN '1960-1-1' AND '1970-1-1';
+------------+-----------+------------+
| first_name | last_name | birth_date |
+------------+-----------+------------+
| Bobby      | Briggs    | 1967-05-24 |
| Audrey     | Horne     | 1965-02-01 |
| James      | Hurley    | 1967-01-02 |
| Andy       | Brennan   | 1960-12-27 |
+------------+-----------+------------+
4 rows in set (0.007 sec)

MariaDB [test2]> SELECT first_name, last_name
    -> FROM students
    -> WHERE first_name IN ('Bobby', 'Lucy', 'Andy');
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Bobby      | Briggs    |
| Lucy       | Moran     |
| Andy       | Brennan   |
+------------+-----------+
3 rows in set (0.001 sec)

MariaDB [test2]> SELECT student_id, date, score, maxscore
    -> FROM tests, scores
    -> WHERE date = '2014-08-25'
    -> AND tests.test_id = scores.test_id;
+------------+------------+-------+----------+
| student_id | date       | score | maxscore |
+------------+------------+-------+----------+
|          1 | 2014-08-25 |    15 |       15 |
|          2 | 2014-08-25 |    15 |       15 |
|          3 | 2014-08-25 |    14 |       15 |
|          4 | 2014-08-25 |    15 |       15 |
|          5 | 2014-08-25 |    14 |       15 |
|          6 | 2014-08-25 |    13 |       15 |
|          7 | 2014-08-25 |    13 |       15 |
|          8 | 2014-08-25 |    14 |       15 |
|          9 | 2014-08-25 |    15 |       15 |
|         10 | 2014-08-25 |    15 |       15 |
+------------+------------+-------+----------+
10 rows in set (0.009 sec)

MariaDB [test2]> SELECT scores.student_id, tests.date, scores.score, tests.maxscore
    -> FROM tests, scores
    -> WHERE date = '2014-08-25'
    -> AND tests.test_id = scores.test_id;
+------------+------------+-------+----------+
| student_id | date       | score | maxscore |
+------------+------------+-------+----------+
|          1 | 2014-08-25 |    15 |       15 |
|          2 | 2014-08-25 |    15 |       15 |
|          3 | 2014-08-25 |    14 |       15 |
|          4 | 2014-08-25 |    15 |       15 |
|          5 | 2014-08-25 |    14 |       15 |
|          6 | 2014-08-25 |    13 |       15 |
|          7 | 2014-08-25 |    13 |       15 |
|          8 | 2014-08-25 |    14 |       15 |
|          9 | 2014-08-25 |    15 |       15 |
|         10 | 2014-08-25 |    15 |       15 |
+------------+------------+-------+----------+
10 rows in set (0.001 sec)

MariaDB [test2]> SELECT CONCAT(students.first_name, " ", students.last_name) AS Name,
    -> tests.date, scores.score, tests.maxscore
    -> FROM tests, scores, students
    -> WHERE date = '2014-08-25'
    -> AND tests.test_id = scores.test_id
    -> AND scores.student_id = students.student_id;
+----------------+------------+-------+----------+
| Name           | date       | score | maxscore |
+----------------+------------+-------+----------+
| Dale Cooper    | 2014-08-25 |    15 |       15 |
| Harry Truman   | 2014-08-25 |    15 |       15 |
| Shelly Johnson | 2014-08-25 |    14 |       15 |
| Bobby Briggs   | 2014-08-25 |    15 |       15 |
| Donna Hayward  | 2014-08-25 |    14 |       15 |
| Audrey Horne   | 2014-08-25 |    13 |       15 |
| James Hurley   | 2014-08-25 |    13 |       15 |
| Lucy Moran     | 2014-08-25 |    14 |       15 |
| Tommy Hill     | 2014-08-25 |    15 |       15 |
| Andy Brennan   | 2014-08-25 |    15 |       15 |
+----------------+------------+-------+----------+
10 rows in set (0.001 sec)

MariaDB [test2]> SELECT students.student_id,
    -> CONCAT(students.first_name, " ", students.last_name) AS Name,
    -> COUNT(absences.date) AS Absences
    -> FROM students, absences
    -> WHERE students.student_id = absences.student_id
    -> GROUP BY students.student_id;
+------------+--------------+----------+
| student_id | Name         | Absences |
+------------+--------------+----------+
|          7 | James Hurley |        1 |
|          8 | Lucy Moran   |        1 |
+------------+--------------+----------+
2 rows in set (0.007 sec)

MariaDB [test2]> SELECT students.student_id,
    -> CONCAT(students.first_name, " ", students.last_name) AS Name,
    -> COUNT(absences.date) AS Absences
    -> FROM students LEFT JOIN absences
    -> ON students.student_id = absences.student_id
    -> GROUP BY students.student_id;
+------------+----------------+----------+
| student_id | Name           | Absences |
+------------+----------------+----------+
|          1 | Dale Cooper    |        0 |
|          2 | Harry Truman   |        0 |
|          3 | Shelly Johnson |        0 |
|          4 | Bobby Briggs   |        0 |
|          5 | Donna Hayward  |        0 |
|          6 | Audrey Horne   |        0 |
|          7 | James Hurley   |        1 |
|          8 | Lucy Moran     |        1 |
|          9 | Tommy Hill     |        0 |
|         10 | Andy Brennan   |        0 |
+------------+----------------+----------+
10 rows in set (0.001 sec)

MariaDB [test2]> SELECT students.first_name,
    -> students.last_name,
    -> scores.test_id,
    -> scores.score
    -> FROM students
    -> INNER JOIN scores
    -> ON students.student_id=scores.student_id
    -> WHERE scores.score <= 15
    -> ORDER BY scores.test_id;
+------------+-----------+---------+-------+
| first_name | last_name | test_id | score |
+------------+-----------+---------+-------+
| Dale       | Cooper    |       1 |    15 |
| Harry      | Truman    |       1 |    15 |
| Shelly     | Johnson   |       1 |    14 |
| Bobby      | Briggs    |       1 |    15 |
| Donna      | Hayward   |       1 |    14 |
| Audrey     | Horne     |       1 |    13 |
| James      | Hurley    |       1 |    13 |
| Lucy       | Moran     |       1 |    14 |
| Tommy      | Hill      |       1 |    15 |
| Andy       | Brennan   |       1 |    15 |
| Dale       | Cooper    |       2 |    14 |
| Harry      | Truman    |       2 |    14 |
| Shelly     | Johnson   |       2 |    14 |
| Bobby      | Briggs    |       2 |    14 |
| Donna      | Hayward   |       2 |    13 |
| Audrey     | Horne     |       2 |    13 |
| James      | Hurley    |       2 |    13 |
| Tommy      | Hill      |       2 |    13 |
| Andy       | Brennan   |       2 |    13 |
| Dale       | Cooper    |       5 |    15 |
| Harry      | Truman    |       5 |    14 |
| Shelly     | Johnson   |       5 |    13 |
| Bobby      | Briggs    |       5 |    15 |
| Donna      | Hayward   |       5 |    13 |
| Audrey     | Horne     |       5 |    13 |
| James      | Hurley    |       5 |    13 |
| Lucy       | Moran     |       5 |    12 |
| Tommy      | Hill      |       5 |    14 |
| Andy       | Brennan   |       5 |    12 |
+------------+-----------+---------+-------+
29 rows in set (0.001 sec)