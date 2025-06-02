📘 RetailVerse Phase 3: Metadata-Driven Ingestion - README
🎯 Objective
Phase 3 of the RetailVerse Enterprise Data Engineering Platform demonstrates a robust, metadata-driven ingestion framework that combines Azure Data Factory orchestration with Databricks notebook processing. This phase focuses on automating and scaling raw data ingestion into the Bronze zone using control tables, modular transformations, schema validation, data quality (DQ) enforcement, audit logging, and observability dashboards.
✅ Key Achievements
- Metadata-controlled dynamic ingestion across multiple datasets.
- Parameterized ADF pipeline: pl_ingest_retailverse_entity_metadata_driver.
- Robust Databricks ingestion notebook (bronze_ingestion_driver).
- Centralized schema validation and DQ rules engine using JSON and SQL metadata.
- Dual-layer audit logging: SQL (retailverse_metadata.audit_logs) + ADLS (/mnt/logs).
- Quarantine of invalid records to ensure pipeline hygiene and recovery.
- Real-time observability with Power BI dashboard and ingestion metrics.
📐 Blueprint and Architecture
The ingestion architecture is based on the Medallion Lakehouse model. Key components include:
- Raw Layer: Ingests source CSVs into /mnt/raw-dev.
- Bronze Layer: Structured Parquet output with enforced schema.
- Quarantine Layer: Captures rows failing DQ checks.
- Logs Layer: Audit events stored partitioned by entity_name and run_id.
- Control Layer: Azure SQL metadata_control table governs ingestion parameters.
🧾 Artifacts and Naming Conventions
- ADF Pipeline: pl_ingest_retailverse_entity_metadata_driver
- Databricks Notebooks: bronze_ingestion_driver, schema_validator, dq_engine, parse_dq_rules
- SQL Metadata Table: retailverse_metadata.metadata_control
- Audit Table: retailverse_metadata.audit_logs
- Stored Procedure: retailverse_metadata.sp_log_ingestion_failure
- Power BI Dataset/Table: retailverse_customers.audit_logs (for ingestion visualization)
⏳  Enhancements (Planned)
- Retry logic with looped failure handling in ADF
- Logic App-based alerting via Web Activity in ADF
- Parent-child modular pipeline execution design
- Schema drift detection with audit flagging
- CI/CD automation for ADF and Databricks with GitHub Actions
- Infrastructure as Code using Terraform or Bicep
🧠 Summary
This README outlines the completed components and deliverables of RetailVerse Phase 3. It ensures reproducibility of the architecture and enables future CI/CD automation, replayability, and extensibility. The platform is aligned with enterprise-grade standards and showcases deep Azure-native engineering maturity.
