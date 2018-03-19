CREATE TABLE account_transactions (
    id SERIAL,
    account_id int NOT NULL,
    ts TIMESTAMP NOT NULL,
    place VARCHAR,
    amount FLOAT NOT NULL,
    verified BOOLEAN NOT NULL,
    type INT NOT NULL,
    hash VARCHAR NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users (
    id SERIAL,
    username varchar NOT NULL,
    hashed_pass varchar NOT NULL,
    email VARCHAR NOT NULL,
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
    balance float DEFAULT 0.0,
    timezone VARCHAR NOT NULL,
    tracked BOOLEAN NOT NULL,
    PRIMARY KEY (id)
);
