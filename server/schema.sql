CREATE DATABASE chat;


USE chat;

CREATE TABLE users (
  /* Describe your table here.*/
  id INT NOT NULL,
  name VARCHAR(20),
  PRIMARY KEY (id)
);

CREATE TABLE room (
  /* Describe your table here.*/
  id INT NOT NULL,
  name VARCHAR(20),
  PRIMARY KEY (id)
);

CREATE TABLE messages (
  /* Describe your table here.*/
  id INT NOT NULL,
  text VARCHAR(50),
  user_id INT NOT NULL,
  room_id INT NOT NULL,
  message_date DATE,
  PRIMARY KEY (id),
  FOREIGN KEY (user_id) REFERENCES users (id),
  FOREIGN KEY (room_id) REFERENCES room (id)
);


/* Create other tables and define schemas for them here! */


/*  Execute this file from the command line by typing:
 *    mysql -u root < server/schema.sql
 *  to create the database and the tables.*/

