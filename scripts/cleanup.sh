#!/bin/bash
set -e

SNOWSQL_ACCOUNT="$1"
SNOWSQL_USER="$2"
SNOWSQL_ROLE="$3"
SNOWSQL_WAREHOUSE="$4"
CLONED_DB="$5"
SNOWSQL_PRIVATE_KEY_PATH="$6"

export SNOWFLAKE_PRIVATE_KEY_PATH="$SNOWSQL_PRIVATE_KEY_PATH"

snowsql -a "$SNOWSQL_ACCOUNT" -u "$SNOWSQL_USER" -r "$SNOWSQL_ROLE" -w "$SNOWSQL_WAREHOUSE" -q "
DROP DATABASE $CLONED_DB;
"

echo "Cloned database $CLONED_DB removed successfully."
