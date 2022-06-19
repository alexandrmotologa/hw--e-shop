-- DDL instructions ( CREATE, ALTER, DROP)

CREATE TABLE "Product"
(
    id integer PRIMARY KEY,
    name character varying(121),
    price_value numeric,
    price_unit character varying(5),
    bar_code character varying(15) UNIQUE,
    quantity integer
);

DROP TABLE "Product";

--DML instructions (CRUD)

INSERT INTO "Product"
VALUES (1, 'First Product', 100, 'USD', '1234567890123', 10);
INSERT INTO "Product"
VALUES (2, 'Second Product', 200, 'USD', '2234567890123', 20);
INSERT INTO "Product"
VALUES (3, 'Third Product', 300, 'USD', '3234567890123', 30);

SELECT * FROM "Product";

SELECT * FROM "Product"
ORDER BY id ASC;

UPDATE "Product"
SET price = 0;

UPDATE "Product"
SET price = 0
WHERE id = 1;

DELETE FROM "Product";

DELETE FROM "Product";
WHERE id = 2;

ALTER TABLE "Product" 
DROP COLUMN bar_code;

SELECT * FROM "Product"
WHERE price < 250;