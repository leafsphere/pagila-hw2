/*
 * Select the title of all 'G' rated movies that have the 'Trailers' special feature.
 * Order the results alphabetically.
 * HINT:
 * Use `unnest(special_features)` in a subquery.
 */

SELECT title FROM (
    SELECT title, unnest(special_features) FROM film
    WHERE rating='G'
) t
WHERE unnest='Trailers'
ORDER BY title;
