
{{ config(materialized='view') }}

select *
from {{ source('google_sheets_wbr','demand_metrics') }}

