# Phase M2: Parameterized Ingestion Module

## 📄 Description

Reusable ADF pipeline (`pl_ingest_retailverse_entity`) that ingests raw entity files from ADLS Gen2 `raw-dev` container into `bronze` zone using parameterized source/sink datasets.

## 📁 Datasets

- **Source:** `ds_raw_retailverse_parameters`
- **Sink:** `ds_bronze_retailverse_parameters`

## 🎯 Pipeline Parameters

| Name         | Description                          |
|--------------|--------------------------------------|
| folder_path  | Folder under raw-dev/bronze          |
| file_name    | Filename to ingest                   |

## 🧠 Highlights

- Modular ingestion logic with parameters
- Validates file presence before copy (Get Metadata)
- Scalable for use in Phase M3 (metadata ingestion controller)