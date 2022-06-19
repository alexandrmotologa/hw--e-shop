CREATE TABLE "Bag"
(
    id integer PRIMARY KEY,
    client_id integer NOT NULL
);

ALTER TABLE "Bag"
ADD CONSTRAINT fk_bag FOREIGN KEY(client_id)
    REFERENCES "Client"(id);

SELECT * FROM "Bag";