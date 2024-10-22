**Stage Notebook:**

Once data is loaded to the raw container, reading data from file formats like CSV, Excel, and JSON (Mongodb data extracted in JSON), data cleaning, Datatype conversion from raw to expected schema process can be done using Stage notebook and data will be loaded to stage container in the delta format. In Stage, container data is stored in partitions and the partitions are getting overwritten just to load only incremental data. But existing partitions are also saved in the same stage container.
Inputs to Notebook:
Inputs are provided to the notebook using Widget.
Input_file: path to json file
input_partition: partitions to Raw container
out_partition: partition for stage container
1. Read raw files: CSV, Excel, and JSON files can be read into this framework. For CSV format options like inferSchema, quote character, escape character can be pass-through input JSON.
2. Data cleaning: If any unwanted characters need to be removed from the dataframe then use
3. Data type conversion: If the structure of the data needs to be converted into the expected format then create the table with expected data types and then load data to Stage. Convert_datatype function created to identify the data type of table and convert raw data type into an expected data type. If the staging table is not already created then the staging table will be created the same as raw format.
4. Add partitions: It also has a feature to add partitions or change partitions while loading data to the stage container.

