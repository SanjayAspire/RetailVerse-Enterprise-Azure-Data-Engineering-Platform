# 🛒 Flipkart-Scale Enterprise Azure Data Engineering Project

This is an enterprise-grade, end-to-end Azure Data Engineering solution that simulates a Flipkart-style retail ecosystem. It includes scalable data ingestion, processing, storage, transformation, CI/CD automation, reporting, and potential ML integration — built using real Azure services.

---

## 🧩 Architecture Overview

📌 Full architecture defined in [RETAIL_AZURE_ARCHITECTURE.md](./RETAIL_AZURE_ARCHITECTURE.md)

- Ingest retail sales & customer data into ADLS Gen2
- Orchestrate pipelines using Azure Data Factory
- Transform data using Azure Databricks (PySpark)
- Store curated data in Delta Lake (Bronze → Silver → Gold)
- Query and visualize via Azure Synapse & Power BI
- Secure access using Key Vault, RBAC, and Private Endpoints
- Maintain governance using Azure Purview
- Automate with GitHub + Azure DevOps + Terraform

---

## 📊 Dataset

- Format: `.csv`
- Type: Extended retail data (orders, products, customers, inventory)
- Size: ~100,000+ rows (simulated Flipkart-scale volume)
- Location: [./datasets/retail_data.csv](./datasets/retail_data.csv)

---

## 🚀 Tech Stack

| Layer         | Service / Tool                |
|---------------|-------------------------------|
| Storage       | Azure Data Lake Storage Gen2  |
| Ingestion     | Azure Data Factory             |
| Processing    | Azure Databricks (PySpark)     |
| Warehouse     | Azure Synapse Analytics        |
| Reporting     | Power BI                       |
| Governance    | Azure Purview, Key Vault       |
| Monitoring    | Azure Monitor, Log Analytics   |
| CI/CD         | GitHub, Azure DevOps Pipelines |
| IaC           | Terraform                      |

---

## 🎯 Project Highlights

- ✅ Enterprise-level quality benchmarks: scalability, reliability, governance, and performance
- ✅ Implements Medallion Architecture (Bronze, Silver, Gold layers)
- ✅ Data quality checks, schema validation, and monitoring
- ✅ CI/CD-enabled with reusable, modular ADF pipelines
- ✅ Professional documentation and GitHub structure
- ✅ Future-ready for ML integration

---


## 📁 Repo Structure

```
flipkart-enterprise-data-engineering/
├── README.md
├── RETAIL_AZURE_ARCHITECTURE.md
├── datasets/
├── notebooks/
├── pipelines/
├── terraform/
├── reports/
```

---


