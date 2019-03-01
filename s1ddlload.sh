#!/bin/sh
db_name="sales_db"
table_name="daily_sales_stage"
file_location="/home/cloudera/Desktop/s1/sales_data_sample.csv"
hive -f s1load.hql --hiveconf DB=$db_name --hiveconf tablename=$table_name --hiveconf file=$file_location
