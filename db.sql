
// Milestone 1.

SELECT *
FROM `students`
WHERE YEAR(date_of_birth) = 1990;

// Milestone 2;

SELECT *
 FROM `courses`
  WHERE CFU > 10;

// Milestone 3;
SELECT *
 FROM `students`
  WHERE YEAR(date_of_birth) < 1994;

// Milestone 4;

SELECT * 
FROM `courses`
 WHERE year = 1 
 AND `period` = 'I semestre';

// Milestone 5;

SELECT *
 FROM `exams`
  WHERE `hour` > '14%'
   AND `date` = '20-06-20';
  
// Milestone 6;
SELECT * FROM `degrees` WHERE`level` = 'magistrale';

// Milestone 7;

SELECT *
  FROM `departments`
    COUNT;

// Milestone 8;

SELECT *
 FROM `teachers`
  WHERE `phone` IS NULL;


// Milestone 9;