import snowflake.connector
ctx = snowflake.connector.connect(
        user = "admin",
        password = "Certi@1699",
        account = "bc33357.ap-southeast-1",
        role = "ACCOUNTADMIN"
    )
	
res = ctx.cursor().execute('create database emp_backup clone emp')
