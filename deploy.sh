#!/bin/bash

echo "🚀 Iniciando atualização do site estático..."

DESTINO="/var/www/html"

rm -rf ${DESTINO}/*
cp -r /home/ec2-user/* ${DESTINO}/

chown -R ec2-user:ec2-user ${DESTINO}
chmod -R 755 ${DESTINO}

echo "✅ Site atualizado com sucesso!"
