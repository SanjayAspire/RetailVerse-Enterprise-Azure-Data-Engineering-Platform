# Azure Data Factory Setup – RetailVerse Enterprise Data Engineering Platform

This document outlines the Azure Data Factory (ADF) setup for the RetailVerse project, following industry-grade best practices for an enterprise-scale data engineering platform.

---

## 📌 Purpose

Azure Data Factory (ADF) serves as the core orchestration and ETL engine for the RetailVerse platform. It will be responsible for:

- Ingesting raw retail data from ADLS Gen2
- Transforming and preparing data for analytical consumption
- Managing development, test, and production workflows

---

## 🏗️ ADF Instance Details

| Setting               | Value                                             |
|------------------------|---------------------------------------------------|
| **Name**              | `adf-retailverse-dev`                             |
| **Region**            | `East US`                                         |
| **Integration Runtime** | `AutoResolveIntegrationRuntime` (default)        |
| **Git Integration**   | ✅ Enabled                                         |
| **Collaboration Branch** | `main`                                          |
| **Root Folder**       | `adf`                                             |
| **Branch Folder**     | `main` or `dev` (based on your branching strategy) |
| **VNet Integration**  | ❌ Not enabled yet (planned for advanced stage)    |
| **Managed Identity**  | ✅ Used                                            |

---

## 🔐 GitHub Integration Details

| Setting                  | Value                                              |
|---------------------------|----------------------------------------------------|
| **Repository Name**       | `RetailVerse-Enterprise-Azure-Data-Engineering-Platform` |
| **Collaboration Branch**  | `main`                                             |
| **Root Folder**           | `adf`                                              |
| **Linked Directory in Git** | `adf/pipeline/`, `adf/linkedService/`, etc.        |
| **Git Provider**          | GitHub (OAuth Authorization)                       |

✅ **Git integration successfully tested** by committing a placeholder pipeline:
- `pl_retailverse_placeholder_init`

---

## 🧪 Development Environment Strategy

The current setup is configured for the **Development (dev)** environment. Additional ADF instances or configurations for **test** and **prod** will be handled in later phases using **CI/CD pipelines**.

---

## 🏷️ Tagging Strategy

| Tag Key       | Tag Value               |
|----------------|--------------------------|
| `Project`      | `RetailVerse`            |
| `Environment`  | `dev`                    |
| `Owner`        | `Sanjay_Yadav`    |
| `CostCenter`   | `Learning`        |
| `Region`       | `East US`                |

> 💡 Tagging enables better cost tracking, resource grouping, and searchability in an enterprise setup.

---

## ✅ Next Steps

- [x] ADF Instance Created
- [x] GitHub Integration Enabled and Verified
- [x] Placeholder Pipeline Committed
- [ ] Create Linked Services for ADLS Gen2 and other sources
- [ ] Build parameterized and reusable pipelines for ingestion and transformation
- [ ] Define global parameters and naming conventions

---

