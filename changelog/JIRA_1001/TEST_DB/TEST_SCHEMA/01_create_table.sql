--liquibase formatted sql

-- changeset create_table:101
CREATE OR REPLACE TABLE STOCKS (
    STOCK_ID INT AUTOINCREMENT,
    STOCK_NAME VARCHAR(50),
    STOCK_PRICE DECIMAL(10,2),
    TRADE_DATE TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO STOCKS (STOCK_NAME, STOCK_PRICE) VALUES
('Apple', 175.25),
('Microsoft', 320.50),
('Google', 2900.75),
('Amazon', 3400.10),
('Tesla', 850.90);

--rollback drop table STOCKS;
