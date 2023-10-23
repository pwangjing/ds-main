
{{ config(materialized='view') }}

select {{ source('google_sheets_wbr','demand_metrics') }}
from TM_FIVETRAN.GOOGLE_SHEETS_WBR.DEMAND_METRICS 

