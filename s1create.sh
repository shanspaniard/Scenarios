#!/bin/sh
db_name="sales_db"
table_name="daily_sales"
file_type="ORC"
echo "connecting to database - " $db_name
echo  "using table - " $table_name
hive -f s1.hql --hiveconf DB=$db_name --hiveconf tablename=$table_name --hiveconf filetype=$file_type
