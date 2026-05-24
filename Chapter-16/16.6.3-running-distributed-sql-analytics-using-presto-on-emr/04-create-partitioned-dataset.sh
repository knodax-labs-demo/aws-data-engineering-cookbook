mkdir -p sales/year=2026/month=05
cat > sales/year=2026/month=05/sales.csv <<'EOF'
customer_id,customer_name,region,sales_amount
101,John Smith,East,1200
102,Sarah Lee,West,950
103,David Brown,East,2100
104,Emily Davis,South,1800
105,Michael Clark,West,1300
EOF
