/* Spin-off of "Project: App impersonator" */

/* Think about your favorite apps, and pick one that stores your data- like a game that stores scores, an app that lets you post updates, etc. Now in this project, you're going to imagine that the app stores your data in a SQL database (which is pretty likely!), and write SQL statements that might look like their own SQL.

CREATE a table to store the data.
INSERT a few example rows in the table.
Use an UPDATE to emulate what happens when you edit data in the app.
Use a DELETE to emulate what happens when you delete data in the app */

/* What does the app's SQL look like? */


CREATE TABLE Fitness_one(id INTEGER PRIMARY KEY AUTOINCREMENT,name TEXT,workout_type TEXT,minutes INTEGER);

INSERT INTO fitness_one (name, workout_type, minutes) VALUES ("Pradeep Singh", "running", 50);
INSERT INTO fitness_one (name, workout_type, minutes) VALUES ("Priyanka", "jumping", 15);
INSERT INTO fitness_one (name, workout_type, minutes) VALUES ("Tanika Wadwa", "running", 30);
INSERT INTO fitness_one (name, workout_type, minutes) VALUES ("Aditiya Debroy", "swimming", 60);

UPDATE fitness_one set name = "Priyanka Singh" where id =2;

DELETE from fitness_one where id = 4;

SELECT * from fitness_one;




























