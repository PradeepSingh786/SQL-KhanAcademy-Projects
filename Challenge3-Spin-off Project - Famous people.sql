/* Spin-off of "Project: Famous people" */
/* In this project, you’re going to make your own table with some small set of “famous people”, then make more tables about things they do and join those to create nice human readable lists.

For example, here are types of famous people and the questions your data could answer:

Movie stars: What movies are they in? Are they married to each other?
Singers: What songs did they write? Where are they from?
Authors: What books did they write?
Fictional characters: How are they related to other characters? What books do they show up in? */
/* Create table about the people and what they do here */

CREATE TABLE stars (id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT,
    twitter TEXT,
    STARmeter TEXT,
    birthdate TEXT,
    following_id INTEGER);

INSERT INTO stars (first_name, last_name, twitter , STARmeter, birthdate, following_id)
    VALUES ("Antonio", "Banderas", "@antoniobanderas", "228", "1960-08-10", 5);
INSERT INTO stars (first_name, last_name, twitter, STARmeter, birthdate, following_id)
    VALUES ("Leonardo", "DiCaprio", "@LeoDiCaprio", "38", "1974-11-11", 6);
INSERT INTO stars (first_name, last_name, twitter, STARmeter, birthdate, following_id)
    VALUES ("Adam", "Driver", "@AdamDriver83", "14", "1983-11-19", 2);
INSERT INTO stars (first_name, last_name, twitter, STARmeter, birthdate, following_id)
    VALUES ("Joaquin", "Phoenix", "@JoPhoenix74", "10", "1974-10-28", 2);
INSERT INTO stars (first_name, last_name, twitter, STARmeter, birthdate, following_id)
    VALUES ("Jonathan", "Pryce", "@Pryce47", "179", "1947-06-01", 9);
INSERT INTO stars (first_name, last_name, twitter, STARmeter, birthdate, following_id)
    VALUES ("Tom", "Hanks", "@tomhanks", "58", "1956-07-09", 4);
INSERT INTO stars (first_name, last_name, twitter, STARmeter, birthdate, following_id)
    VALUES ("Anthony", "Hopkins", "@ahopkins", "317", "1937-12-31", 4);
INSERT INTO stars (first_name, last_name, twitter, STARmeter, birthdate, following_id)
    VALUES ("Al", "Pacino", "@alpacino", "123", "1940-04-25", 10);
INSERT INTO stars (first_name, last_name, twitter, STARmeter, birthdate, following_id)
    VALUES ("Joe", "Pesci", "@pesci", "178", "1943-02-09", 8);
INSERT INTO stars (first_name, last_name, twitter, STARmeter, birthdate, following_id)
    VALUES ("Brad", "Pitt", "@bradpitt", "37", "1963-12-18", 7);


CREATE TABLE leading_role (id INTEGER PRIMARY KEY,
    stars_id INTEGER,
    movie TEXT,
    rate INTEGER);

INSERT INTO leading_role (stars_id, movie, rate)
    VALUES (4, "Joker", 8.6);
INSERT INTO leading_role (stars_id, movie, rate)
    VALUES (3, "Marriage Story", 8.1);
INSERT INTO leading_role (stars_id, movie, rate)
    VALUES (2, "Once Upon a Time... in Hollywood", 7.8);
INSERT INTO leading_role (stars_id, movie, rate)
    VALUES (1, "Pain and Glory", 7.6);
INSERT INTO leading_role (stars_id, movie, rate)
    VALUES (5, "The Two Popes", 7.6);


CREATE TABLE supporting_role (id INTEGER PRIMARY KEY,
    stars_id INTEGER,
    movie TEXT,
    rate INTEGER);

INSERT INTO supporting_role (stars_id, movie, rate)
    VALUES (9, "The Irishman", 8.0);
INSERT INTO supporting_role (stars_id, movie, rate)
    VALUES (8, "The Irishman", 8.0);
INSERT INTO supporting_role (stars_id, movie, rate)
    VALUES (10, "Once Upon a Time... in Hollywood", 7.8);
INSERT INTO supporting_role (stars_id, movie, rate)
    VALUES (6, "A Beautiful Day in the Neighborhood", 7.6);
INSERT INTO supporting_role (stars_id, movie, rate)
    VALUES (8, "The Two Popes", 7.6);


SELECT * FROM stars;

SELECT * FROM leading_role;

SELECT * FROM supporting_role;

/* cross join */
SELECT * FROM leading_role, stars;

/* implicit inner join */
SELECT * FROM leading_role, stars
    WHERE leading_role.stars_id = stars.id;
    
SELECT * FROM supporting_role, stars
    WHERE supporting_role.stars_id = stars.id;
    
/* explicit inner join - JOIN */
SELECT stars.first_name, stars.last_name, stars.twitter, leading_role.movie, leading_role.rate FROM stars
    JOIN leading_role
    ON stars.id = leading_role.stars_id
    WHERE rate > 7.7;

SELECT stars.first_name, stars.last_name, stars.twitter, supporting_role.movie, supporting_role.rate FROM stars
    JOIN supporting_role
    ON stars.id = supporting_role.stars_id
    WHERE rate > 7.7;