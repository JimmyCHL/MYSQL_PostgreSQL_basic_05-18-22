CREATE TABLE cities (
    name VARCHAR(200) PRIMARY KEY,
);

CREATE TABLE locations (
    id INT PRIMARY KEY AUTO_INCREMENT, -- mysql
    --id SERIAL PRIMARY KEY, -- Postgresql
    title VARCHAR(300),
    street VARCHAR(300) NOT NULL,
    house_number VARCHAR(10) NOT NULL,
    postal_code VARCHAR(5) NOT NULL,
    city_name VARCHAR(200) REFERENCEs cities (name) ON DELETE RESTRICT ON UPDATE CASCADE -- forein key, if no field specify, the unique primary key field would be our reference
);

CREATE TABLE events (
    id INT PRIMARY KEY AUTO_INCREMENT, -- NOT NULL UNIQUE is PRIMARY KEY, AUTO_INCREMENT is for MySQL
    --id SERIAL PRIMARY KEY, -- THIS IS for Postgresql
    name VARCHAR(300) NOT NULL CHECK (LENGTH(name) > 5), -- not null constraint , built-in function
    date_planned TIMESTAMP NOT NULL, -- WITH DATE AND TIME
    image VARCHAR(300),
    description TEXT NOT NULL,
    max_participants INT CHECK (max_participants > 0),
    min_age INT CHECK (min_age>0), -- check constraint
    location_id INT REFERENCES locations (id) ON DELETE CASCADE -- REFERENCES constraint would make sure the value we put here exactly exist on reference table.
);

-- ON DELETE -> when data is deleted
-- RESTRICT -> prevent from deleting data which is refered and related to other table.
-- CASCADE -> if that row or data is deleted, any other data that is related to deleted row or data should be deleted as well.
-- SET NULL -> set null

-- ON UPDATE CASCADE -> when data is updated, any other data that is related to updated row or data should be updated as well.

