SELECT M."name", A."Actor Name"
FROM movies M JOIN actors A
ON M."Actor ID" = A."Actor ID"
WHERE M.year = 2005;

CREATE VIEW "2006_view" AS
	SELECT *
	FROM movies
	WHERE year = 2006;