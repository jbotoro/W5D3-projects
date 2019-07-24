DROP TABLE IF EXISTS cattoys;
DROP TABLE IF EXISTS cats;
DROP TABLE IF EXISTS toys;

CREATE TABLE cats (
  Id SERIAL PRIMARY KEY,
  Name varchar(255),
  Color varchar(255),
  Breed varchar(255)
);

CREATE TABLE toys (
  Id SERIAL PRIMARY KEY,
  Price float,
  Color varchar(255),
  Name varchar(255)
);

CREATE TABLE cattoys (
  Id SERIAL PRIMARY KEY,
  --PRIMARY KEY (Cat_id,Toy_id),
  Cat_id int REFERENCES cats(Id),
  Toy_id int REFERENCES toys(Id)
);

INSERT INTO cats
  (id, name, color, breed)
VALUES
  (1, 'Spike', 'Grey', 'Siamese'),
  (2, 'Runt', 'Black', 'Bengal'),
  (3, 'Boxer', 'Calico', 'Ragdoll'),
  (4, 'Susan', 'White', 'Persian'),
  (5, 'Circle', 'Grey', 'Scottish Fold');

INSERT INTO toys
  (id, price, color, name )
VALUES
  (1, 111, 'Blue', 'Yarn'),
  (2, 222, 'Green', 'Ball'),
  (3, 333, 'Red', 'Scratching Post'),
  (4, 444, 'White', 'Hamster Wheel'),
  (5, 555, 'Brown', 'Toy Mouse');

INSERT into cattoys
  (id, Cat_id, toy_id)
VALUES
  (1, 1, 1),
  (2, 2, 2),
  (3, 3, 3),
  (4, 4, 4),
  (5, 5, 5);







