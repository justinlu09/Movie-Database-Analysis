-- 2005 films and their leading actors
-- SELECT M."name", A."Actor Name"
-- FROM movies M JOIN actors A
-- ON M."Actor ID" = A."Actor ID"
-- WHERE M.year = 2005;

-- finding total revenue for each genre of movies
-- SELECT DISTINCT genre, SUM(budget) OVER(PARTITION BY genre) AS total_revenue
-- FROM movies;

-- For 2010 movies, list the directors that directed Drama movies
SELECT D."Director Name", M.genre, M.year, M.name
FROM movies M JOIN directors D
ON M."Director ID" = D."Director ID"
WHERE M.year = 2010 AND M.genre = 'Drama';

-- Find actors who have acted in more than 5 films in the database
SELECT M.name, COUNT(M.name)
FROM movies M JOIN actors A
ON M."Actor ID" = A."Actor ID"
GROUP BY M.name
HAVING COUNT(name) > 5;


--find actor/director pairs

-- CREATE VIEW "2006_view" AS
-- 	SELECT *
-- 	FROM movies
-- 	WHERE year = 2006;