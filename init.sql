CREATE TABLE transactions (
    id SERIAL,
    account_id int NOT NULL,
    ts TIMESTAMP NOT NULL,
    place VARCHAR,
    amount FLOAT NOT NULL,
    verified BOOLEAN NOT NULL,
    type INT NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users (
    id SERIAL ,
    username varchar NOT NULL,
    hashed_pass varchar NOT NULL,
    email varchar,
    UNIQUE(username),
    PRIMARY KEY (id)
);
    
CREATE TABLE accounts (
    id SERIAL,
    user_id int NOT NULL,
    username VARCHAR NOT NULL,
    password VARCHAR NOT NULL,
    message VARCHAR NOT NULL,
    answer VARCHAR NOT NULL,
    balance float NOT NULL,
    notify_changes BOOLEAN NOT NULL,
    PRIMARY KEY (id)
);
