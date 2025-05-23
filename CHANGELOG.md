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