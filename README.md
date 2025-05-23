# 🛒 RetailVerse Enterprise Azure Data Engineering Platform

RetailVerse is a full-scale, enterprise-ready data platform built using Azure-native services. It is designed to simulate real-world workloads like those in Flipkart, Amazon, or other data-intensive retail environments. The platform follows the Medallion architecture and implements modular ingestion, transformation, orchestration, analytics, CI/CD, and documentation best practices.

---

## 🧭 Table of Contents

- [Project Overview](#project-overview)
- [Architecture](#architecture)
- [Completed Phases](#completed-phases)
- [Technologies Used](#technologies-used)
- [Folder Structure](#folder-structure)
- [Module Documentation](#module-documentation)
- [License](#license)

---

## 📘 Project Overview

This project mimics enterprise-scale Azure Data Engineering workloads for a retail analytics platform. It supports the ingestion and processing of customer, order, and product data to deliver actionable business insights.

**Key Features:**
- Modular Medallion Architecture (Raw → Bronze → Silver → Gold)
- Scalable ingestion using ADF (static, parameterized, metadata-driven)
- Structured pipeline documentation and Git integration
- Future-ready for APIs, streaming, OLAP, ML, and Power BI

---

## 🧱 Architecture

```
RAW (ADLS)      →     BRONZE (Delta)      →     SILVER (Clean Delta)      →     GOLD (KPIs, Reports)
[Raw Files]         [Validated Landing]        [Curated Cleaned Data]        [Aggregated Outputs]
      ↓                     ↓                           ↓                             ↓
    ADF              Databricks/Spark            SQL/Delta Views             Power BI / ML / APIs
```

---

## ✅ Completed Phases

| Phase | Module                         | Status       |
|-------|--------------------------------|--------------|
| M0    | Foundation Setup               | ✅ Completed |
| M1    | Static Batch Ingestion         | ✅ Completed |
| M2    | Parameterized Ingestion        | ✅ Completed |
| M3    | Metadata-Driven Ingestion      | 🔜 Upcoming  |
| M4    | Silver Layer Transformation    | 🔜 Upcoming  |
| M5    | Gold Layer KPIs + Outputs      | 🔜 Upcoming  |

---

## 🛠️ Technologies Used

- Azure Data Factory (ADF)
- Azure Data Lake Gen2
- Azure DevOps / GitHub
- Spark / Databricks (Planned)
- Azure SQL / Synapse (Planned)
- Power BI (Planned)
- CI/CD, ARM Templates, REST APIs

---

## 📂 Folder Structure

```
RetailVerse-Enterprise-Azure-Data-Engineering-Platform/
├── adf/                       # ADF pipeline and dataset JSONs
├── ingestion/
│   ├── adf_param/             # Phase M2: Parameterized ingestion
│   └── controller/            # Phase M3: Metadata-driven controller (Upcoming)
├── docs/                      # Architecture, naming, governance docs
├── .gitignore                 # Git hygiene rules
├── README.md                  # Main project documentation (this file)
├── CHANGELOG.md               # Project changelog with release notes
└── LICENSE                    # (Recommended) Open-source license file
```

---

## 📄 Module Documentation

- [Phase M2: Parameterized Ingestion](/ingestion/adf_param/README.md)
- [Architecture Documentation](/docs/architecture.md)
- [Naming Conventions](/docs/naming_conventions.md)

---

## 📄 License

MIT License (Add LICENSE file if not present)

---
