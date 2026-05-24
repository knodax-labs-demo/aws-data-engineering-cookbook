SELECT "table",
       diststyle,
       sortkey1
FROM svv_table_info
WHERE "table"='sales_optimized';
