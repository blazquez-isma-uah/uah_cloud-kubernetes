#!/bin/bash

echo "🚀 Iniciando Minikube y herramientas de monitoreo..."

# Verificar si Minikube ya está corriendo
if minikube status | grep -q "Running"; then
    echo "✅ Minikube ya está en ejecución."
else
    echo "🔄 Iniciando Minikube..."
    minikube start
fi

# Configurar el túnel para acceder a los servicios expuestos en LoadBalancer
echo "🌐 Configurando túnel de Minikube..."
nohup minikube tunnel > /dev/null 2>&1 &

# Lanzar el dashboard de Kubernetes en segundo plano
echo "📊 Iniciando el dashboard de Kubernetes..."
nohup minikube dashboard > /dev/null 2>&1 &

# Iniciar Kiali para monitorear Istio
echo "📡 Iniciando Kiali para Istio..."
nohup istioctl dashboard kiali > /dev/null 2>&1 &

echo "🎉 Minikube y herramientas iniciadas correctamente."
