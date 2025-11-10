# Databricks Spark-Autoamated notebooks

This is ETL automation can be used for simplifying and automating the extract, transform and load data to data warehouse or data mart using databricks notebooks.
User needs to create json file for required inputs for executing databricks notebooks. These notebook reads data from various source like csv, Excel, json and SQL server. If any other data source from which data needs to read can be implement as well. Then data can be transformed using columns mappings like data type conversion and other transformations. You can write SQL statement for transformation or you can provide source-target column mapping. Once data is transformed is ready to load in target as given load strategies- overwrite, Append, upsert, update or SCD type 2. 

This follows ELT approach. Raw data is extracted to Azure data lake storage(ADLS) raw container. The raw data undergo cleaning, typeconversion and partitioning process and stored in stage container. 


**Repo Structure**
This repository contains two top-level folders.
1. Databricks templates: Automated databricks notebooks for stage, transform and Join. 
2. Jobinputs : Sample job inputs file in json format.


Subdirectory structure within the topics will follow the general structure:
|-- Databricks templates
    |-- README.md
    |-- Functions_delta.ipynb
    |-- stage_delta.ipynb
    |-- transform_delta.ipynb
    |-- Join_delta_loop.ipynb
    |-- Join_delta_reports_calculation.ipynb
    
**Spark Configurations:**
1. Mount azure data lake storage in databricks as follows:
configs = {"fs.azure.account.auth.type": "OAuth",
       "fs.azure.account.oauth.provider.type": "org.apache.hadoop.fs.azurebfs.oauth2.ClientCredsTokenProvider",
       "fs.azure.account.oauth2.client.id": "<appId>",
       "fs.azure.account.oauth2.client.secret": "<clientSecret>",
       "fs.azure.account.oauth2.client.endpoint": "https://login.microsoftonline.com/<tenant>/oauth2/token",
       "fs.azure.createRemoteFileSystemDuringInitialization": "true"}

dbutils.fs.mount(
source = "abfss://<container-name>@<storage-account-name>.dfs.core.windows.net/folder1",
mount_point = "/mnt/flightdata",
extra_configs = configs)
  
