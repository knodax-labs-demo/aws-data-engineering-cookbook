mkdir -p data
 
cat > data/sales.csv <<'EOF'
order_id,customer,region,amount
1001,Alice,East,500
1002,Bob,West,700
1003,Charlie,East,300
1004,Diana,North,900
EOF
