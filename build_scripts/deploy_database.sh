#!/bin/bash

echo "🚀 Iniciando despliegue de la base de datos en Kubernetes..."

# Crear el Secret de MySQL si no existe
if ! kubectl get secret mysql-secret &> /dev/null; then
    echo "🔑 Creando secret para MySQL..."
    kubectl create secret generic mysql-secret --from-literal=root-password=4mysqlIsmaPassword_
else
    echo "✅ Secret de MySQL ya existe, omitiendo creación."
fi

# Aplicar los YAML de base de datos
echo "📦 Aplicando configuración de almacenamiento..."
kubectl apply -f ../kubernetes/database/mysql-pv.yaml
kubectl apply -f ../kubernetes/database/mysql-statefulset.yaml
kubectl apply -f ../kubernetes/services/mysql-service.yaml

# Esperar a que el pod de MySQL esté en estado Running
echo "⏳ Esperando a que MySQL esté listo..."
while [[ $(kubectl get pods -l app=mysql -o 'jsonpath={..status.conditions[?(@.type=="Ready")].status}') != "True" ]]; do
    echo "⏳ Esperando 5 segundos..."
    sleep 5
done

echo "✅ MySQL está corriendo."

# Crear el ConfigMap con los scripts SQL si no existe
if ! kubectl get configmap mysql-initdb-config &> /dev/null; then
    echo "📁 Creando ConfigMap con los scripts de inicialización..."
    kubectl create configmap mysql-initdb-config \
        --from-file=../database_scripts/init.sql \
        --from-file=../database_scripts/init_database.sql \
        --from-file=../database_scripts/fbm_peliculas.sql \
        --from-file=../database_scripts/fbm_usuarios.sql \
        --from-file=../database_scripts/init_peliculas.sql \
        --from-file=../database_scripts/init_usuarios.sql
else
    echo "✅ ConfigMap mysql-initdb-config ya existe, omitiendo creación."
fi

echo "🎉 Despliegue de base de datos completado."
