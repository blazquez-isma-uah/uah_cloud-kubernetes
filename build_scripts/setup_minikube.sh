#!/bin/bash

echo "Iniciando Minikube..."

# Verificar si Minikube ya está corriendo
if minikube status | grep -q "Running"; then
    echo "Minikube ya está en ejecución"
else
    echo "Iniciando Minikube..."
    minikube start
fi

echo "Minikube iniciado correctamente"