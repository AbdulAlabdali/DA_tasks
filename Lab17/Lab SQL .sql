SELECT * FROM apple_store.apple_sample;
/*What are the different genres*/
SELECT distinct prime_genre from apple_sample;
/*Which is the genre with the most apps rated?*/
select prime_genre, sum(rating_count_tot) from apple_store.apple_sample
group by prime_genre
order by sum(rating_count_tot) desc
limit 1;
/*Which is the genre with the most apps?*/
select prime_genre, count(prime_genre) from apple_store.apple_sample
group by prime_genre
order by count(prime_genre) desc
limit 1;
/*Which is the one with least?*/
select prime_genre, count(prime_genre) from apple_store.apple_sample
group by prime_genre
order by count(prime_genre) asc
limit 1;
/*Find the top 10 apps most rated.*/
select prime_genre, sum(rating_count_tot) from apple_store.apple_sample
group by prime_genre
order by sum(rating_count_tot) desc
limit 10;
/*Find the top 10 apps best rated by users.*/
select track_name, sum(user_rating) from apple_store.apple_sample
group by track_name
order by sum(user_rating) desc
limit 10;
/*Take a look at the data you retrieved in question 5. Give some insights.*/
/*Answer: Music is the most rated app with the sum of 1126879 ratings*/
/*Take a look at the data you retrieved in question 6. Give some insights.*/
/*Answer: 5 games have 4.5 stars rating 
/*Now compare the data from questions 5 and 6. What do you see?*/
/*Answer: There is no relationship between 5&6 data
/* just limit it to 3 and join codes related*/

select price, sum(user_rating) from apple_store.apple_sample
group by price
order by sum(user_rating) desc
limit 10;
/*for free apps, more ratings*/