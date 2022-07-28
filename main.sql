-- EXERCÍCIO 1

SELECT COUNT("endDate") AS "currentExperiences" FROM experiences;

-- EXERCÍCIO 2

SELECT users.id, COUNT(educations.id) AS educations
FROM educations
JOIN users
ON users.id = educations."userId"
GROUP BY users.id;
