--liquibase formatted sql

-- Changeset id:3 author:dev
CREATE TABLE DEMO_TABLE (
    DEMO_ID NUMBER,
    DESCRIPTION VARCHAR(255) NOT NULL,
    CREATED_AT TIMESTAMP NOT NULL
);

--rollback DROP TABLE DEMO_TABLE;
