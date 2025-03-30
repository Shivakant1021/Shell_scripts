#!/bin/bash
: '
This script sets up a simple Node.js server
with PM2 and Nginx as a reverse proxy.
'

echo "🚀 Starting Small Automation Script..."

# Update system
sudo apt update -y

# Installing Node.js & NPM
echo "📦 Installing Node.js & NPM..."
sudo apt install -y nodejs npm

# Create a simple Node.js server
echo "📜 Setting up a simple Node.js server..."
mkdir -p myapp && cd myapp
cat > server.js <<EOF
const http = require("http");
http.createServer((req, res) => {
    res.write("Hello, World!");
    res.end();
}).listen(3000, () => console.log("Server running on port 3000"));
EOF

# Install PM2
echo "🚀 Installing PM2..."
sudo npm install -g pm2
pm2 start server.js --name "myapp"
pm2 startup
pm2 save

# Installing Nginx and configuring it as a reverse proxy
echo "🌐 Installing Nginx..."
sudo apt install -y nginx

echo "⚙️ Configuring Nginx..."
sudo bash -c 'cat > /etc/nginx/sites-available/myapp' <<EOF
server {
    listen 80;
    server_name localhost;

    location / {
        proxy_pass http://localhost:3000;
        proxy_set_header Host \$host;
        proxy_set_header X-Real-IP \$remote_addr;
        proxy_set_header X-Forwarded-For \$proxy_add_x_forwarded_for;
    }
}
EOF

# Enable the Nginx configuration
sudo ln -s /etc/nginx/sites-available/myapp /etc/nginx/sites-enabled/
sudo nginx -t && sudo systemctl restart nginx

echo "✅ Setup complete! Visit http://localhost to see your Node.js app."



