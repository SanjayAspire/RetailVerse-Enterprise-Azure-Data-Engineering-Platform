
-- RetailVerse Phase 3: Metadata Entity Control Table Setup
-- Author: Sanjay
-- Description: SQL script to create and populate the metadata control table for entity ingestion logic

-- Step 1: Create Schema
CREATE SCHEMA control;

-- Step 2: Create Metadata Control Table
CREATE TABLE control.entity_metadata (
    entity_name        VARCHAR(50) PRIMARY KEY,
    file_format        VARCHAR(10),
    ingestion_mode     VARCHAR(20),
    expected_schema    NVARCHAR(MAX),
    dq_rules           NVARCHAR(MAX),
    partition_column   VARCHAR(50),
    active             BIT
);

-- Step 3: Insert Metadata for RetailVerse Entities
INSERT INTO control.entity_metadata (
    entity_name, file_format, ingestion_mode, expected_schema, dq_rules, partition_column, active
)
VALUES
-- Customers dataset
('customers', 'csv', 'append', '/schemas/customers_schema.json', '["not_null:name", "email_format:email"]', 'region', 1),

-- Orders dataset
('orders', 'csv', 'append', '/schemas/orders_schema.json', '["not_null:order_id", "date_format:order_date"]', 'order_date', 1),

-- Products dataset
('products', 'csv', 'append', '/schemas/products_schema.json', '["not_null:product_id", "numeric:price"]', 'category', 1);
