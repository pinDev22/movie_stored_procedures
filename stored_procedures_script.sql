CREATE PROCEDURE insert_film (@title varchar(255), @description varchar(255), @release_year int,
                            @language_id smallint, @rental_duration tinyint, @rental_rate decimal(4, 2),
                            @length smallint, @replace_cost decimal(5, 2), @rating char(10))
AS
BEGIN
    INSERT INTO film (title, description, release_year, language_id, rental_duration, rental_rate, length, replace_cost, rating)
    VALUES (@title, @description, @release_year, @language_id, @rental_duration, @rental_rate, @length, @replace_cost, @rating);
END;

CREATE FUNCTION get_film_count_by_category (@category_id smallint)
RETURNS int
AS
BEGIN
    DECLARE @film_count int;
    SET @film_count = (SELECT COUNT(*) FROM film_category WHERE category_id = @category_id);
    RETURN @film_count;
END;
