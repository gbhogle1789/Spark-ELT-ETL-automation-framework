from typing import Dict, List, Any
import pyspark.sql
import common.utils
import pyspark.sql.functions as F
from common.etl_job import ETLJob # must be imported after spark has been set up
from datetime import datetime

class Job(ETLJob):
    target_table = "cct_harbor_group"
    business_key = ["co_nm"]
    primary_key = {"hbr_grp_key": "int"}    
    sources:Dict[str,Dict[str,Any]] = {
        "cct": {
            "type": "file",
            "source": "cct_harbor_group"
        }
    }

    target_mappings:List[Dict[str,Any]] = [
        { "source": F.upper(F.col("Company")), "target": "co_nm" },
        { "source": F.lit("Y"), "target": "curr_row_flg" },
        { "source": F.lit(4), "target": "src_sys_id" }
    ]
