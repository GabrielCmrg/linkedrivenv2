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

-- EXERCÍCIO 4

SELECT MAX(jobs.salary) AS "maximumSalary", roles.name AS "role"
FROM jobs
JOIN roles
ON roles.id = jobs."roleId"
WHERE jobs.active = TRUE
GROUP BY roles.name
ORDER BY "maximumSalary";
