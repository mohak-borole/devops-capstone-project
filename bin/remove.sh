#!/bin/bash
echo "****************************************"
echo " Reversing Capstone Environment Setup"
echo "****************************************"

echo "Stopping the Postgres Docker container..."
# make down || docker stop <your-container-name> && docker rm <your-container-name>

echo "Removing Python virtual environment..."
rm -rf ~/venv

echo "Uninstalling Python 3.9 and Virtual Environment..."
sudo apt-get remove --purge -y python3.9 python3.9-venv
sudo apt-get autoremove -y
sudo apt-get clean

echo "Reverting changes to ~/.bashrc..."
sed -i '/# DevOps Capstone Project additions/d' ~/.bashrc
sed -i '/export GITHUB_ACCOUNT=/d' ~/.bashrc
sed -i '/export PS1=/d' ~/.bashrc
sed -i '/source ~\/venv\/bin\/activate/d' ~/.bashrc

echo "****************************************"
echo " Capstone Environment Reversal Complete"
echo "****************************************"
echo ""
echo "Restart your terminal or run 'source ~/.bashrc' to apply changes."
echo ""
