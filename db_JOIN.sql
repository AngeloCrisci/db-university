--Selezionare tutti gli studenti iscritti al Corso di Laurea in Economia
SELECT students.name AS 'nome', 
            students.surname AS 'cognome', 
                degrees.name AS 'nome_laurea'
FROM students
JOIN degrees
ON students.degree_id = degrees.id
WHERE degrees.name = 'Corso di Laurea in Economia';

-- Selezionare tutti i Corsi di Laurea Magistrale del Dipartimento di Neuroscienze
SELECT degrees.name AS 'nome_corso', 
            degrees.level AS 'Livello', 
                departments.name AS 'nome_dipartimento' 
FROM degrees
JOIN departments ON degrees.department_id = departments.id 
WHERE degrees.level = 'Magistrale'
AND departments.name LIKE '%Neuroscienze';


-- Selezionare tutti i corsi in cui insegna Fulvio Amato (id=44)
SELECT courses.name AS 'Nome_corso', 
        teachers.name AS 'Nome insegnante', 
            teachers.surname AS 'Cognome Insegnante' 
FROM courses 
JOIN course_teacher ON courses.id = course_teacher.course_id 
JOIN teachers ON course_teacher.teacher_id = teachers.id 
WHERE teachers.id = 44;
