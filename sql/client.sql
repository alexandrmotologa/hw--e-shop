CREATE EXTENSION pgcrypto;

CREATE TABLE "Client"(
	id integer PRIMARY KEY,
	name character varying(61),
	email character varying(121) UNIQUE,
	phone character varying(21) UNIQUE,
	is_vip boolean DEFAULT false,
	password TEXT NOT NULL
);

INSERT INTO "Client"
VALUES (1, 'John Doe', 'johndoe@demo.com', '+123456789', true, crypt('dadada123', gen_salt('bf')));

SELECT * FROM "Client"
WHERE email = 'johndoe@demo.com' AND password = crypt('dadada123', password);
