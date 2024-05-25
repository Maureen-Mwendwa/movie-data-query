USE movie

SELECT * FROM `movie-data`;

-- The primary aim of this query is to sort movies by their release date in descending order. This sorting is beneficial as it enables users to quickly identify the latest trends in movie genres and themes.
SELECT Movie, Genre, ReleaseDate  -- This part of the query specifies that we want to retrieve the columns Movie, Genre, and ReleaseDate from the movie-data table.
FROM `movie-data`
ORDER BY STR_TO_DATE(ReleaseDate, '%m/%d/%Y') DESC; 
-- This crucial part of the query converts the ReleaseDate column from its string format into a date format and then sorts the results by these dates in descending order (from the most recent to the oldest).




