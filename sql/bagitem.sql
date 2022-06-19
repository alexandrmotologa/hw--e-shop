CREATE TABLE "BagItem"
(
    bag_id integer NOT NULL,
    product_id integer NOT NULL,
    quantity integer DEFAULT 1
);

ALTER TABLE "BagItem"
ADD CONSTRAINT fk_bag_item_bag_id FOREIGN KEY(bag_id)
REFERENCES "Bag"(id);

ALTER TABLE "BagItem"
ADD CONSTRAINT fk_bag_item_product_id FOREIGN KEY(product_id)
REFERENCES "Product"(id);

SELECT * FROM "BagItem";