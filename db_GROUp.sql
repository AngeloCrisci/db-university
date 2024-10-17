-- Contare quanti iscritti ci sono stati ogni anno
SELECT YEAR(`enrolment_date`) AS 'anno', 
COUNT(*) AS 'numero_iscritti'
 FROM `students`
  GROUP BY YEAR(`enrolment_date`)
   ORDER BY 'anno' ASC;

-- Contare gli insegnanti che hanno l ufficio nello stesso edificio
SELECT teachers.office_address AS 'ufficio', 
COUNT(teachers.id) AS 'numero_insegnanti' 
    FROM `teachers` 
        GROUP BY teachers.office_address 
            ORDER BY 'numero_insegnanti';

-- Calcolare la media dei voti di ogni appello d'esame
SELECT `exam_id` AS 'esame', 
    AVG(`vote`) AS 'media_voti'
        FROM `exam_student`
            GROUP BY `exam_id`
                ORDER BY 'media_voti' ASC;

-- Contare quanti corsi di laurea ci sono per ogni dipartimento
SELECT `department_id` AS 'dipartimento', 
    COUNT(*) AS 'laurea' 
        FROM `degrees` 
            GROUP BY `department_id` 
                ORDER BY 'laurea';


-- Selezionare tutti gli studenti con i dati relativi al corso di laurea a cui sono iscritti e il relativo dipartimento, in ordine alfabetico per cognome e nome
SELECT students.name AS 'nome', 
        students.surname AS 'cognome', 
            degrees.name AS 'nome laurea', 
                departments.name AS 'nome dipartimento' 
FROM students 
JOIN degrees ON students.degree_id = degrees.id 
JOIN departments ON degrees.department_id = departments.id 
ORDER BY students.surname ASC, students.name ASC;