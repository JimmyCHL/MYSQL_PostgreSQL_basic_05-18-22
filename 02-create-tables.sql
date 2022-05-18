CREATE TABLE events (
    id INT PRIMARY KEY AUTO_INCREMENT, -- NOT NULL UNIQUE is PRIMARY KEY, AUTO_INCREMENT is for MySQL
    -- id SERIAL PRIMARY KEY, -- THIS IS for Postgresql
    name VARCHAR(300) NOT NULL CHECK (LENGTH(name) > 5), -- not null constraint , built-in function
    date_planned TIMESTAMP NOT NULL, -- WITH DATE AND TIME
    image VARCHAR(300),
    description TEXT NOT NULL,
    max_participants INT CHECK (max_participants > 0),
    min_age INT CHECK (min_age>0) -- check constraint
);

-- without not null constraint, the data could be empty or null. emtpy string is still a valid value