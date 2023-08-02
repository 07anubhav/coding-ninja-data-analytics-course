/*
As a data analyst in the media business, you are asked to analyze the latest movie dataset.
*/
select MIN(Likes)
from movies;

/*
Your next task is to suggest the viewers high rated movies. Criteria for a movie to be rated high is it should have a rating greater than or equal to 4, dislikes less than 20 and likes more than 70. Print out the movieTitle for such movies.
*/
select MovieTitle
from movies
where Rating >= 4 and Dislikes < 20 and Likes > 70;

/*
Lets analyse the overall ratings for particular months. What is the average rating of all the movies released in the months of June and august?
*/
select AVG(Rating)
from movies
where ReleaseMonth IN ('June','August');