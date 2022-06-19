--  these scripts correspond to the APP LOGIC



-- ADMIN LOGIC

-- add product
INSERT INTO "Product"
VALUES (1, 'First Product', 100, 'USD', '1234567890123', 10);

-- view product stock
SELECT * FROM "Product";



-- CLIENT LOGIC
-- sign up
INSERT INTO "Client"
VALUES (1, 'John Doe', 'johndoe@demo.com', '+123456789', true, crypt('dadada123', gen_salt('bf')));

-- add to bag / transaction
-- start transaction
BEGIN;
INSERT INTO "Bag"
VALUES (1, 1);


INSERT INTO "BagItem"
VALUES (1, 3, 10);

UPDATE "Product"
SET quantity = quantity - 10
WHERE id = 3;
COMMIT;
-- commit/rollback transaction


-- view bag
SELECT * FROM "BagItem"
WHERE bag_id = 1;




-- API LOGIC