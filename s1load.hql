set 
  hive.exec.dynamic.partition = true;
set 
  hive.exec.dynamic.partition.mode = nonstrict;
set 
  hive.exec.max.dynamic.partitions = 100000;
set 
  hive.exec.max.dynamic.partitions.pernode = 10000;
INSERT OVERWRITE TABLE ${hiveconf : DB}.${hiveconf : table} Partition(ORDERDATE) 
SELECT 
  ORDERNUMBER, 
  QUANTITYORDERED, 
  PRICEEACH, 
  ORDERLINENUMBER, 
  SALES, 
  ORDERDATE, 
  STATUS, 
  QTR_ID, 
  MONTH_ID, 
  YEAR_ID, 
  PRODUCTLINE, 
  MSRP, 
  PRODUCTCODE, 
  CUSTOMERNAME, 
  PHONE, 
  ADDRESSLINE1, 
  ADDRESSLINE2, 
  CITY, 
  STATE, 
  POSTALCODE, 
  COUNTRY, 
  TERRITORY, 
  CONTACTLASTNAME, 
  CONTACTFIRSTNAME, 
  DEALSIZE 
from 
  ${hiveconf : DB}.${hiveconf : sourcetable};
