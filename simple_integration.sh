#!/bin/bash

# Exit immediately if a command exits with a non-zero status
set -e

# Variables (update these as needed)
SNOWSQL_ACCOUNT="bc33357.ap-southeast-1"
SNOWSQL_USER="ADMIN"
SNOWSQL_ROLE="ACCOUNTADMIN"
SNOWSQL_WAREHOUSE="COMPUTE_WH"
SNOWSQL_DATABASE="EMP"
CLONED_DATABASE="CMP_CLONE"
SNOWSQL_PRIVATE_KEY_PATH="C:/Users/WT745LU/rsa_key.pem"

# Ensure the private key path is set correctly
export SNOWFLAKE_PRIVATE_KEY_PATH="$SNOWSQL_PRIVATE_KEY_PATH"

# Command to execute
echo "Cloning database: $SNOWSQL_DATABASE to $CLONED_DATABASE"
snowsql -a "$SNOWSQL_ACCOUNT" -u "$SNOWSQL_USER" -r "$SNOWSQL_ROLE" -w "$SNOWSQL_WAREHOUSE" -q "
CREATE DATABASE $CLONED_DATABASE CLONE $SNOWSQL_DATABASE;
"

if [ $? -eq 0 ]; then
  echo "Database cloned successfully: $SNOWSQL_DATABASE to $CLONED_DATABASE"
else
  echo "Error: Database cloning failed."
  exit 1
fi
