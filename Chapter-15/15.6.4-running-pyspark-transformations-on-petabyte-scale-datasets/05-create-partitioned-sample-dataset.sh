mkdir -p data/year=2026/month=05
cat > data/year=2026/month=05/events.csv <<'EOF'
event_id,customer_id,region,event_type,event_value
1,101,East,purchase,1200
2,102,West,view,0
3,103,East,purchase,2100
4,104,South,purchase,1800
5,105,West,view,0
6,106,East,purchase,1600
EOF
