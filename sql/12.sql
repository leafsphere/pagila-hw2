/*
 * List the title of all movies that have both the 'Behind the Scenes' and the 'Trailers' special_feature
 *
 * HINT:
 * Create a select statement that lists the titles of all tables with the 'Behind the Scenes' special_feature.
 * Create a select statement that lists the titles of all tables with the 'Trailers' special_feature.
 * Inner join the queries above.
 */

SELECT title FROM (
    SELECT title FROM (
        SELECT title, unnest(special_features) AS special_features FROM film
    ) t1
    WHERE special_features='Behind the Scenes'
) bts
JOIN (
    SELECT title FROM (
        SELECT title, unnest(special_features) AS special_features FROM film
    ) t2
    WHERE special_features='Trailers'
) trailers
USING (title)
ORDER BY title;
