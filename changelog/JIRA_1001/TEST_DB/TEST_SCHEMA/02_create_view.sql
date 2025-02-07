--liquibase formatted sql

-- changeset create_view:102

CREATE OR REPLACE VIEW V_STOCKS AS 
SELECT STOCK_NAME, STOCK_PRICE, TRADE_DATE 
FROM STOCKS 
WHERE STOCK_PRICE > 100;

--rollback drop view v_stocks;
