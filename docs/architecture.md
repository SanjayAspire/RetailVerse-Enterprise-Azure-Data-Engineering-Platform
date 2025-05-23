# RetailVerse Architecture Overview

## 🧱 Medallion Architecture

```
RAW (CSV)
  ↓ (ADF)
BRONZE (Delta)
  ↓ (Databricks)
SILVER (Clean Delta)
  ↓ (SQL/Spark SQL)
GOLD (KPIs, Delta/Parquet)
```

## 🔧 Automation & Monitoring

- ADF Scheduled Triggers
- Event Grid + Logic Apps
- CI/CD via Azure DevOps
- Logging via Azure Monitor