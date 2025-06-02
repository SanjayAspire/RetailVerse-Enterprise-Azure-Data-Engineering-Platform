# 📘 Phase 3 Ingestion Overview

## 🎯 Objective
This document outlines the design, implementation, and outcomes of the metadata-driven ingestion framework built during Phase 3 of the RetailVerse Enterprise Azure Data Engineering Platform.

## 🛠️ Core Components

| Component | Description |
|----------|-------------|
| ADF Pipeline | `pl_ingest_retailverse_entity_metadata_driver` |
| Databricks Notebook | `bronze_ingestion_driver.py` |
| Metadata Table | `retailverse_metadata.metadata_control` |
| Audit Log Table | `retailverse_metadata.audit_logs` |
| Quarantine Layer | `/mnt/quarantine/<entity>/` |
| Logs Layer | `/mnt/logs/audit_logs/` |
| Utilities | `schema_validator.py`, `dq_engine.py`, `parse_dq_rules.py` |

## 🔄 Ingestion Workflow

1. **ADF Lookup**: Fetch active entities from the metadata table.
2. **ForEach Loop**: Iterates over each entity for ingestion.
3. **Databricks Notebook Invocation**: Executes schema and DQ logic using the `bronze_ingestion_driver`.
4. **Schema Validation**: JSON-defined schemas enforced via `schema_validator`.
5. **DQ Enforcement**: Rules like `not_null`, `positive_number`, `email_format` applied.
6. **Quarantine Invalid Rows**: Bad records routed to `/mnt/quarantine/`.
7. **Audit Logging**: Results written to SQL + ADLS for observability.
8. **Power BI Dashboard**: Provides ingestion monitoring and visual metrics.

## 🧱 Architecture

The architecture adheres to the Medallion Lakehouse model with modular, metadata-driven control.

## 📊 Observability

- Power BI is used to visualize metrics such as row count, ingestion duration, failed runs, and failure rates.
- DAX measures summarize success/failure rates and durations.

## ⏳ Deferred Enhancements

Planned in Phase 3.2:
- Retry logic in ADF (`Until`, `SetVariable`, `Wait`)
- Alerting using Logic Apps via Web Activity
- Schema drift detection and versioning
- Full CI/CD using GitHub Actions
- IaC via Terraform or Bicep

## ✅ Summary

This ingestion framework forms the foundation of RetailVerse's enterprise data pipeline strategy. It is secure, modular, scalable, and auditable — designed for real-world workloads and automation readiness.
