Step-by-Step Final SQL Script (Error-Free and Optimized)
1. 💾 Create Metadata Schema (only if not exists)





-- Create a separate schema for metadata-related objects
IF NOT EXISTS (
    SELECT * FROM sys.schemas WHERE name = 'retailverse_metadata'
)
BEGIN
    EXEC('CREATE SCHEMA retailverse_metadata');
END
GO



Create Metadata Control Table (if not exists)



-- Metadata control table to drive ingestion logic dynamically for each entity
IF OBJECT_ID('retailverse_metadata.metadata_control', 'U') IS NULL
BEGIN
    CREATE TABLE retailverse_metadata.metadata_control (
        entity_name NVARCHAR(100) PRIMARY KEY,         -- Unique name of dataset (e.g., customers)
        file_format NVARCHAR(10) NOT NULL,             -- File type: csv/json/parquet
        source_path NVARCHAR(500) NOT NULL,            -- ADLS Gen2 path to source file/folder
        ingestion_mode NVARCHAR(20) NOT NULL,          -- append, overwrite, or merge
        expected_schema NVARCHAR(MAX) NOT NULL,        -- Inline or external path to schema JSON
        dq_rules NVARCHAR(MAX) NULL,                   -- JSON array of data quality rules
        partition_column NVARCHAR(100) NULL,           -- Optional partitioning column for Delta Lake
        active BIT NOT NULL DEFAULT 1,                 -- Flag to control pipeline activation
        created_at DATETIME DEFAULT GETDATE(),         -- Row creation timestamp
        updated_at DATETIME DEFAULT GETDATE()          -- Last update timestamp
    );
END
GO




Upsert Metadata Entries Using MERGE






-- MERGE: Updates existing records or inserts new ones without violating primary key constraints
MERGE retailverse_metadata.metadata_control AS target
USING (VALUES 
    (
        'customers',
        'csv',
        'https://retailversestg.dfs.core.windows.net/bronze/customers/',
        'append',
        '{"customer_id":"int","name":"string","email":"string","region":"string"}',
        '["not_null:customer_id", "not_null:email", "email_format:email"]',
        'region'
    ),
    (
        'orders',
        'csv',
        'https://retailversestg.dfs.core.windows.net/bronze/orders/',
        'append',
        '{"order_id":"int","customer_id":"int","product_id":"int","quantity":"int","order_date":"date"}',
        '["not_null:order_id", "positive_number:quantity"]',
        'order_date'
    ),
    (
        'products',
        'csv',
        'https://retailversestg.dfs.core.windows.net/bronze/products/',
        'append',
        '{"product_id":"int","name":"string","category":"string","price":"float"}',
        '["not_null:product_id", "positive_number:price"]',
        'category'
    )
) AS source (
    entity_name,
    file_format,
    source_path,
    ingestion_mode,
    expected_schema,
    dq_rules,
    partition_column
)
ON target.entity_name = source.entity_name
WHEN MATCHED THEN 
    UPDATE SET 
        file_format       = source.file_format,
        source_path       = source.source_path,
        ingestion_mode    = source.ingestion_mode,
        expected_schema   = source.expected_schema,
        dq_rules          = source.dq_rules,
        partition_column  = source.partition_column,
        updated_at        = GETDATE()
WHEN NOT MATCHED THEN 
    INSERT (
        entity_name,
        file_format,
        source_path,
        ingestion_mode,
        expected_schema,
        dq_rules,
        partition_column,
        created_at,
        updated_at
    )
    VALUES (
        source.entity_name,
        source.file_format,
        source.source_path,
        source.ingestion_mode,
        source.expected_schema,
        source.dq_rules,
        source.partition_column,
        GETDATE(),
        GETDATE()
    );
GO







Validate Inserted Metadata


-- Check metadata entries to confirm ingestion configurations
SELECT * FROM retailverse_metadata.metadata_control;
GO
