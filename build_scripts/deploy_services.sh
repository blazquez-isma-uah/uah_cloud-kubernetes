#!/bin/bash

echo "🚀 Iniciando despliegue de los microservicios y el frontend..."

# Aplicar los Deployments de los servicios
echo "📦 Desplegando frontend..."
kubectl apply -f ../kubernetes/deployments/frontend-deployment.yaml

echo "📦 Desplegando password generator backend..."
kubectl apply -f ../kubernetes/deployments/password_generator_backend-deployment.yaml

echo "📦 Desplegando películas backend..."
kubectl apply -f ../kubernetes/deployments/peliculas_backend-deployment.yaml

echo "📦 Desplegando usuarios backend..."
kubectl apply -f ../kubernetes/deployments/usuarios_backend-deployment.yaml

# Aplicar los Services
echo "🌐 Creando servicio para frontend..."
kubectl apply -f ../kubernetes/services/frontend-service.yaml

echo "🌐 Creando servicio para password generator backend..."
kubectl apply -f ../kubernetes/services/password_generator_backend-service.yaml

echo "🌐 Creando servicio para películas backend..."
kubectl apply -f ../kubernetes/services/peliculas_backend-service.yaml

echo "🌐 Creando servicio para usuarios backend..."
kubectl apply -f ../kubernetes/services/usuarios_backend-service.yaml

# Esperar a que al menos una réplica de cada servicio esté lista
echo "⏳ Esperando a que los servicios estén listos..."

SERVICES=(
  "frontend"
  "password-generator-backend-v1"
  "password-generator-backend-v2"
  "peliculas-backend-v1"
  "peliculas-backend-v2"
  "usuarios-backend-v1"
  "usuarios-backend-v2"
)

for service in "${SERVICES[@]}"; do
    while [[ $(kubectl get pods -l version=${service##*-} -l app=${service%-*} -o 'jsonpath={.items[*].status.conditions[?(@.type=="Ready")].status}') != *"True"* ]]; do
        echo "⏳ Esperando a que $service tenga al menos una réplica lista..."
        sleep 5
    done
    echo "✅ $service está corriendo."
done

echo "🎉 Despliegue de los servicios completado."
