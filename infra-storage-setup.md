# ADLS Gen2 Storage Account Configuration – RetailVerse Project

This file documents the enterprise-grade container structure used in the RetailVerse data engineering project. It ensures standardization across development, testing, and production environments while aligning with the Medallion Architecture and Azure best practices.

## ✅ Storage Account Configuration

- **Storage Account Name**: `stgretailverse<env>`
- **Resource Group**: `rg-retailverse`
- **Region**: EastUS
- **Redundancy**: Locally Redundant Storage (LRS) or Geo-redundant (for prod)
- **Hierarchy Enabled**: Yes (ADLS Gen2)

---

## 📦 Container Structure

| Container Name | Purpose |
|----------------|---------|
| `raw-dev` | Raw data for development environment |
| `raw-test` | Raw data for testing environment |
| `raw-prod` | Raw data for production environment |
| `bronze` | Staging zone for ingested data (landing zone) |
| `silver` | Cleaned, enriched, and joined data |
| `gold` | Final curated datasets for reporting, ML, and business users |
| `scripts` | Store reusable SQL, PySpark, JSON configs, mapping files, notebooks |
| `logs` | Store logs from ADF, Databricks, ML jobs for observability and debugging |
| `synapse` | Used by Azure Synapse for shortcut and workspace mappings |

---

## 🏷️ Tags Used

| Tag Name   | Value           |
|------------|-----------------|
| Project    | RetailVerse     |   
| Environment | Shared         |        
| Region     | EastUS          |
| Owner      |Sanjay_Yadav     |
| CostCenter | Learning        |

---




> ✅ This structure is designed to support a modular, secure, scalable, and fully production-ready data platform with CI/CD, observability, lineage, and separation of concerns.

---




