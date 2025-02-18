#!/bin/bash

echo "🚀 Iniciando Minikube y herramientas de monitoreo..."

# Verificar si Minikube ya está corriendo
if minikube status | grep -q "Running"; then
    echo "✅ Minikube ya está en ejecución."
else
    echo "🔄 Iniciando Minikube..."
    minikube start
fi
kubectl apply -f kubernetes/istio/istio-1.24.2/samples/addons