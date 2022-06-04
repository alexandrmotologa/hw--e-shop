-- HW1: write an SQL script that will remove the bar_code column from the Product table
ALTER TABLE "Product" 
DROP COLUMN bar_code;

-- HW2: write another select that will show only the products cheaper that 250
SELECT * FROM "Product"
WHERE price < 250;

-- HW3: create the clients table
CREATE TABLE "Client" (
	id integer,
	name character varying,
    is_vip boolean
);

-- HW4: insert a few clients
INSERT INTO "Client" (id, name, is_vip)
VALUES (1, 'John Doe', true);
INSERT INTO "Client" (id, name, is_vip)
VALUES (2, 'Richard Roe', false);
INSERT INTO "Client" (id, name, is_vip)
VALUES (3, 'Jane Doe', false);
INSERT INTO "Client" (id, name, is_vip)
VALUES (4, 'Joe Citizen', true);
INSERT INTO "Client" (id, name, is_vip)
VALUES (5, 'Average Joe', false);
INSERT INTO "Client" (id, name, is_vip)
VALUES (6, 'M Joe', false);

-- HW5: select only the clients wich name have at least 5 characters
SELECT * FROM "Client"
WHERE Length(name) > 5;

-- HW6: delete a client based on it's id
DELETE FROM "Client"
WHERE id = 1;

-- HW7: show only the non-vip clients
SELECT * FROM "Client"
WHERE is_vip = false;

-- HW8: alter the client's table, add the email column
ALTER TABLE "Client"
ADD COLUMN email character varying;

-- HW9: using update, set the email address for each client
UPDATE "Client"
SET email = 'johndoe@demo.com'
WHERE id = 1;
UPDATE "Client"
SET email = 'richardroe@demo.com'
WHERE id = 2;
UPDATE "Client"
SET email = 'janedoe@demo.com'
WHERE id = 3;
UPDATE "Client"
SET email = 'joecitizen@demo.com'
WHERE id = 4;
UPDATE "Client"
SET email = 'averagejoe@demo.com'
WHERE id = 5;
UPDATE "Client"
SET email = 'mjoe@demo.com'
WHERE id = 6;