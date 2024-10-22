#Generic Spark version

Data Lake creation.
    This framework is created for the ETL implementation. It extracts data from csv, COBOL and PostgreSQL table then transform using pyspark and load to PostgreSQL with loading strategies Append, Upsert, overwrite and Type 2.
    This is automated ETL framework can be useful for any ETL based project, we need to create .py job file for inputs which contains source details, Join details like sources, transformations and final column name in target tables and pass this input to the framework and load the target tables in the PostgreSQL.

## Repo Structure

This repository contains several top-level folders, each representing a specific area of work.

Artifacts contained herein represent technical and working code artifacts only.

| Folder | Purpose |
|--- |--- |
| [data-lake](data-lake) | Data lake and S3 handling artifacts |
| [data-mart](data-mart) | Data mart and running ETL artifacts, schema creation and migration |
| [tools](tools) | Miscellaneous tools |

Subdirectory structure within the topics will follow the general structure:

```text
|-- Module1
    |-- README.md
    |-- doc
    |-- src
    |-- test
    |-- scripts
```

Where

- `Module1` is the name of the module or area
- `README.md` describes the module in general
- `doc` is a directory containing documentation
- `src` is a directory containing code artifacts
- `test` is a directory containing testing code artifacts
- `scripts` is a directory containing build, deployment, or other construction artifacts used for producing the solution


