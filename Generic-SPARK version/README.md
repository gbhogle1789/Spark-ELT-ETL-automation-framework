# Generic SPARK version

This folder contains the Generic SPARK version of the Spark ELT/ETL automation framework. It provides a simple, repository-level layout to organize sample data, lake and mart artifacts used for development, testing and examples.

## Contents

- Sample_data/ - Example input datasets used for local testing and CI.
- data-lake/ - Landing and raw zone structures (source-parsed and parquet/avro outputs). Intended to store raw extracts.
- data-mart/ - Curated and analytics-ready datasets derived from data-lake (dimension, fact, aggregated tables).

> Note: This directory is intentionally lightweight and does not include Spark jobs. Spark job code, configurations and deployment artifacts live elsewhere in the repository (or can be added here per project needs).

## Purpose

Use this folder as a starting point when running or demonstrating the framework against Spark (local or cluster). It keeps sample inputs and expected outputs separated from implementation code.

## Quick start

1. Prerequisites
   - Apache Spark (3.x recommended)
   - Java 8/11 (or matching Spark runtime)
   - Python 3.7+ if using PySpark

2. Prepare sample data
   - Place small CSV/JSON/Parquet input files into `Sample_data/` for local testing.

3. Run a job (example generic command)

   spark-submit --master local[4] \
     --conf spark.some.config=VALUE \
     path/to/your/spark-job.jar \
     --input "Generic-SPARK version/Sample_data" \
     --output "Generic-SPARK version/data-lake" \
     --mode overwrite

   Or for PySpark scripts:

   spark-submit --master local[4] path/to/your_script.py \
     --input "Generic-SPARK version/Sample_data" \
     --lake "Generic-SPARK version/data-lake" \
     --mart "Generic-SPARK version/data-mart"

4. Validate outputs
   - Check `data-lake/` for raw/parquet outputs.
   - Check `data-mart/` for transformed/aggregated outputs.

## Conventions

- Keep raw source files in `data-lake/raw/` and parquet/columnar outputs in `data-lake/curated/`.
- Use partitioning by date (year/month/day) where appropriate for large data.
- Use semantic naming for data-mart tables (e.g. fact_sales, dim_customer).

## Adding transforms

- Place transformation scripts or compiled jars in a dedicated folder at repository root (e.g. `jobs/` or `spark-jobs/`).
- Use configuration-driven jobs (YAML/JSON) to avoid hard-coding paths.

## Testing

- Keep small test datasets in `Sample_data/` and include unit/integration tests that run locally with Spark local master.
- Use CI to run spark-submit against sample data and compare outputs to expected results.

## Contributing

- Follow repository contributing guidelines.
- When adding datasets or schema changes, update documentation and tests.

## Contact

For questions about this folder or the Generic SPARK layout, open an issue or contact the repository owner.
