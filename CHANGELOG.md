# RetailVerse Data Platform - Changelog

## [v0.2.0] - Phase M2 Completed (2025-05-22)
### Added
- Created `pl_ingest_retailverse_entity` reusable ADF pipeline
- Added parameterized datasets: `ds_raw_retailverse_parameters`, `ds_bronze_retailverse_parameters`
- Ingested: customers.csv, orders.csv, products.csv into Bronze zone
- Linked ADF Studio with GitHub main branch and published

### Notes
- Foundation for Phase M3 (metadata-driven ingestion)
- ARM templates and JSON definitions auto-generated in `adf_publish/`


 # 📦 CHANGELOG

All notable updates to the RetailVerse platform are listed below.

## [Phase 3 – Metadata-Driven Ingestion] – May 2025

### Added
- feat(adf): Added metadata ingestion driver pipeline (`pl_ingest_retailverse_entity_metadata_driver`)
- feat(databricks): Added `bronze_ingestion_driver.py` notebook with dynamic entity ingestion
- feat(utils): Created modular DQ engine and schema validator utilities
- feat: Enabled SQL + ADLS audit logging for all entities
- feat(powerbi): Built Power BI ingestion monitoring dashboard (KPI tiles, failure rate, run count)

### Fixed
- fix: Resolved row count and run_id logging mismatch in ingestion audit
- fix: Corrected null-handling logic in DQ rule parser

### Documentation
- docs: Added `README.md` for ADF, Databricks, and Documentation folders
- docs: Added Phase 3 blueprint and milestone PDF

###  (Planned )
- Retry + Wait logic in ADF pipeline
- Logic App webhook alerting on failure
- Modular parent-child pipeline orchestration
- CI/CD automation with GitHub Actions
