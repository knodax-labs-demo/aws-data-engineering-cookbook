SELECT tablename, size
FROM svv_table_info
WHERE tablename IN
('sales_staging','sales_summary');
