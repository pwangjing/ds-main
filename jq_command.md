getting fivetran tables

cat  ~/Downloads/New_Request-1706762909531.json | jq -r '.data.schemas.thrivemarket_prod.tables | keys[] as $k | "\($k), \(.[$k]| .sync_mode), \(.[$k]| .enabled) " ' > /tmp/magento_table_config.csv
