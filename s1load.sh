#!/bin/sh
db_name="sales_db"
table_name="daily_sales"
source_table="daily_sales_stage"
hive -f s1load.hql --hiveconf hive.exec.dynamic.partition=true --hiveconf DB=$db_name --hiveconf table=$table_name --hiveconf sourcetable=$source_table 

