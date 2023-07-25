-- Your code here

DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS coffee_orders;

CREATE TABLE Customers (
    id INTEGER PRIMARY KEY,
    name VARCHAR(40) NOT NULL CHECK(length(name) <= 40),
    phone VARCHAR(10) UNIQUE CHECK(length(phone) = 12),
    email VARCHAR(255) UNIQUE CHECK(length(email) <= 255),
    points INTEGER NOT NULL DEFAULT 5,
    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE coffee_orders (
    id INTEGER PRIMARY KEY,
    is_redeemed BOOLEAN NOT NULL DEFAULT 0,
    ordered_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);