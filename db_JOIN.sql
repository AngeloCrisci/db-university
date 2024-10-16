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

-- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT students.name AS 'nome', 
        students.surname AS 'cognome', 
            degrees.name AS 'nome laurea', 
                departments.name AS 'nome dipartimento' 
FROM students 
JOIN degrees ON students.degree_id = degrees.id 
JOIN departments ON degrees.department_id = departments.id 
ORDER BY students.surname ASC, students.name ASC;

-- Selezionare tutti i corsi di laurea con i relativi corsi e insegnanti
SELECT degrees.name AS 'nome laurea', 
        courses.name AS 'nome corso', 
            teachers.name AS 'nome insegnante', 
                teachers.surname AS 'cognome insegnante' 
FROM degrees
JOIN courses ON degrees.id = courses.degree_id 
JOIN course_teacher ON courses.id = course_teacher.course_id 
JOIN teachers ON course_teacher.teacher_id = teachers.id;

-- Selezionare tutti i docenti che insegnano nel Dipartimento di Matematica (54)
SELECT DISTINCT teachers.name AS 'nome ins', 
                    teachers.surname AS 'cognome ins', 
                        departments.name AS 'dipartimante' 
FROM teachers 
JOIN course_teacher ON teachers.id = course_teacher.teacher_id 
JOIN courses ON course_teacher.course_id = courses.id 
JOIN degrees ON courses.degree_id = degrees.id 
JOIN departments ON degrees.department_id = departments.id 
WHERE departments.name = 'Dipartimento di Matematica';
