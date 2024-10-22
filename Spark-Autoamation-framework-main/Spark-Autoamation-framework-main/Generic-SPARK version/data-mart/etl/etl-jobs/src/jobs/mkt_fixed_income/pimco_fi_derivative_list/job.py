from pyspark.sql.types import ArrayType, StringType, MapType, StructField, StructType, FloatType
from typing import Dict, List, Any
import math
import logging
import pyspark.sql
import common.utils
import pyspark.sql.functions as F
from common.etl_job import ETLJob # must be imported after spark has been set up
from datetime import datetime
class Job(ETLJob):
    target_table = "fi_derivative_list"
    business_key = ["dervtv_nm"]
    business_key_props:Dict[str,Dict[str,Any]] = {"dervtv_nm":{"case_sensitive": False}}
    primary_key = {"fi_dervtv_list_key":"int"}
    sources:Dict[str,Dict[str,Any]] = {
        "infile": {
            "type": "file",
            "source": "pimco_deriv"
        }
    }
    target_mappings:List[Dict[str,Any]] = [
        {"source": F.col("infile.Bucket"), "target": "dervtv_nm"},
        {"source": F.lit("Y"), "target": "curr_row_flg"}
    ]
