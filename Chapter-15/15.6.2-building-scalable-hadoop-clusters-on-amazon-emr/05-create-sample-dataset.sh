cat > web_logs.txt <<'EOF'
10.1.1.1 GET /index.html 200
10.1.1.2 GET /products.html 200
10.1.1.1 GET /contact.html 404
10.1.1.3 GET /index.html 200
10.1.1.2 GET /products.html 200
10.1.1.1 GET /about.html 200
EOF
