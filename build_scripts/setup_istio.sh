#!/bin/bash

echo "🚀 Configurando Istio en Kubernetes..."

# Etiquetar el namespace default para la inyección automática de sidecars
echo "🛠️ Habilitando la inyección automática de sidecars en el namespace default..."
kubectl label namespace default istio-injection=enabled --overwrite

# Reiniciar los pods para que se inyecte el sidecar
echo "🔄 Reiniciando los pods para que tomen la configuración de Istio..."
kubectl delete pod --all --namespace=default

# Aplicar la configuración de Istio
echo "🌐 Aplicando Gateway..."
kubectl apply -f ../kubernetes/istio/gateway.yaml

echo "🔀 Aplicando VirtualServices..."
kubectl apply -f ../kubernetes/istio/virtualservices.yaml

echo "📌 Aplicando DestinationRules..."
kubectl apply -f ../kubernetes/istio/destinationrule.yaml

echo "✅ Configuración de Istio completada."
