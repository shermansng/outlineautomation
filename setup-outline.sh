#!/bin/bash

# Outline VPN Auto Installer for Ubuntu

echo "🛠️  Installing Outline VPN..."

# Update system
sudo apt-get update && sudo apt-get upgrade -y

# Install dependencies
sudo apt-get install -y curl wget gnupg2 software-properties-common

# Run official Outline installation script
sudo bash -c "$(wget -qO- https://raw.githubusercontent.com/Jigsaw-Code/outline-server/master/src/server_manager/install_scripts/install_server.sh)"

echo ""
echo "✅ Outline installation complete!"

# Optional: Show how to retrieve API access again if needed
cat <<EOF

📌 HOW TO ACCESS OUTLINE MANAGER:

1. On your local machine, download Outline Manager: https://getoutline.org
2. Copy the API URL printed above into the Outline Manager.
3. You can now create access keys to use with the Outline client (iOS/Android/Desktop).

💡 TIP: Bookmark the manager URL or keep it in a password manager.

EOF
