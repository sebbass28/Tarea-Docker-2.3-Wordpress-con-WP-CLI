#!/bin/bash

# Instalar Certbot
sudo apt install certbot python3-certbot-apache -y

# Obtener certificado
sudo certbot --apache -d tu-dominio.com

# Renovación automática
sudo systemctl enable certbot.timer

