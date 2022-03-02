create database apple2;
use apple2;
CREATE TABLE apple2 ( id INTEGER PRIMARY KEY, track_name TEXT, size_bytes Integer,
currency TEXT, price FLOAT,
rating_count_tot FLOAT,
rating_count_ver FLOAT,
user_rating FLOAT,
user_rating_ver FLOAT,
ver TEXT,
cont_rating FLOAT,
prime_genre TEXT,
sup_devices_num Integer,
ipadSc_urls_num Integer,
lang_num Integer,
vpp_lic			Integer);
SELECT * FROM apple.apple;
select prime_genre from apple.apple;
select track_name, rating_count_tot, prime_genre from apple.apple
order by rating_count_tot desc;
select prime_genre, Count('id') from apple.apple
group by prime_genre
order by count('id') desc;

select prime_genre, count('id') from apple.apple
group by prime_genre
order by count('id') asc
limit 1;

select track_name, rating_count_tot from apple.apple
order by rating_count_tot desc
limit 10;

select track_name, user_rating from apple.apple
order by user_rating desc
limit 10;
# the total rating count does not mean that the user_rating is high, it does not correlate.
select track_name, user_rating ,rating_count_tot, prime_genre from apple.apple
order by rating_count_tot desc
limit 10;


select track_name, user_rating, rating_count_tot, prime_genre from apple.apple
order by user_rating desc
limit 10;

select track_name, user_rating, rating_count_tot, prime_genre, (user_rating * rating_count_tot) from apple.apple
order by user_rating desc
limit 10;

select track_name, user_rating, rating_count_tot, prime_genre from apple.apple
where user_rating=5
order by rating_count_tot desc
limit 3;

select track_name, user_rating, rating_count_tot, price from apple.apple
order by price, user_rating desc;

# 11. Do people care about the price of an app? Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

# It seems that people don't really care about the apps prices, it is not the first parameter to make a choice.