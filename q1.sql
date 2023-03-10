create schema Pet_Shelter
;
CREATE TABLE pet (
    id INT PRIMARY KEY,
    kind VARCHAR(255) NOT NULL,
    color VARCHAR(255) NOT NULL,
    birth_date DATE,
    arrival_date DATE
);
CREATE TABLE OWNER (
    id INT PRIMARY KEY,
    fname VARCHAR(255) NOT NULL,
    lname VARCHAR(255) NOT NULL,
    gender CHAR(1)
);
CREATE TABLE adoption (
    owner_id INT,
    pet_id INT,
    adoption_date DATE,
    PRIMARY KEY (owner_id, pet_id),
    FOREIGN KEY (owner_id) REFERENCES owner(id),
    FOREIGN KEY (pet_id) REFERENCES pet(id),
    UNIQUE (pet_id)
);
/*
INSERT INTO pet (id, kind, color, birth_date, arrival_date) values
(1, 'dog', 'brown', '2018-01-01', '2018-06-01'),
(2, 'cat', 'black', '2019-07-05', '2019-07-05'),
(3, 'dog', 'gray', '2018-05-01', '2019-05-01'),
(4, 'bird', 'green', '2015-03-24', '2019-06-12'),
(5, 'dog', 'black', '2017-05-05', '2017-05-05'),
(6, 'dog', 'yellow', '2002-02-25', '2002-02-25'),
(7, 'dog', 'white', '2010-04-14', '2015-06-03'),
(8, 'cat', 'white', '2017-04-03', '2017-07-05'),
(9, 'cat', 'black', '2016-02-01', '2017-07-04'),
(10, 'cat', 'gray', '2014-07-17', '2014-07-17'),
(11, 'cat', 'brown', '2015-12-10', '2016-02-14'),
(12, 'cat', 'black', '2012-08-03', '2013-09-10')
;

INSERT INTO owner (id, fname, lname, gender) VALUES
(1, 'david', 'levi', 'M'),
(2, 'david', 'cohen', 'M'),
(3, 'lea', 'ashkenazi', 'F'),
(4, 'rachel', 'Levi', 'F'),
(5, 'moshe', 'banai', 'M'),
(6, 'tamar', 'cohen', 'F'),
(7, 'sarit', 'azulai', 'F'),
(8, 'meir', 'vardimon', 'M'),
(9, 'yair', 'yavin', 'M')
;

INSERT INTO adoption (owner_id, pet_id, adoption_date) VALUES
(1,5, '2019-01-01'),
(3,4, '2019-07-01'),
(4,2, '2019-09-01'),
(4,8, '2017-10-12'),
(4,9, '2018-11-15'),
(5,10,'2016-04-04'),
(5,1, '2018-06-02'),
(7,12,'2017-07-06')
; 
*/
