mkdir -p raw-data/year=2024/month=01
mkdir -p raw-data/year=2025/month=01
mkdir -p raw-data/year=2026/month=01

cat > raw-data/year=2026/month=01/events.csv <<'EOF'
event_id,event_type,region,event_value
1001,purchase,East,1200
1002,view,West,0
1003,purchase,South,1800
EOF
