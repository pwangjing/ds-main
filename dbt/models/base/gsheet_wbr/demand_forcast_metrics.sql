
{{ config(materialized='view') }}
--test
select *
from {{ source('google_sheets_wbr','demand_metrics') }}


