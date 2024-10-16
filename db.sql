
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