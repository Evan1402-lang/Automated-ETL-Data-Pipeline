# Automated ETL Pipeline for Transactional Data

## 📌 Business Overview
This repository contains a python-based ETL pipeline designed to ingest raw, unformatted order logs, apply cleaning algorithms, and populate a relational database for downstream analytics.

## 🛠️ Architecture & Technologies
- **Ingestion:** Python (`pandas`)
- **Storage:** SQLite / PostgreSQL
- **Transformation:** Schema validation, missing value handling, text normalization

## 🔄 Pipeline Workflow
1. **Extract:** Read batch records from source CSV files.
2. **Transform:**
   - Standardize date formats to standard ISO dates (`YYYY-MM-DD`).
   - Clean whitespace and case inconsistencies in address fields.
   - Filter corrupt or null primary keys (`order_id`).
3. **Load:** Append structured records into the destination database table (`fact_orders`).
