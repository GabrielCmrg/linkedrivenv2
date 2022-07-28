-- EXERCÍCIO 1

SELECT COUNT("endDate") AS "currentExperiences" FROM experiences;

-- EXERCÍCIO 2

SELECT users.id, COUNT(educations.id) AS educations
FROM educations
JOIN users
ON users.id = educations."userId"
GROUP BY users.id;

-- EXERCÍCIO 3

SELECT users.name AS writer, COUNT(testimonials.id) AS "testimonualsCount"
FROM testimonials
JOIN users
ON users.id = testimonials."writerId"
WHERE users.id = 435
GROUP BY users.name;
