#!/bin/bash

echo "Configurando Istio en Kubernetes..."

# Instalar Istio si no está instalado
echo "Instalando Istio con perfil demo..."
istioctl install --set profile=demo -y

# Etiquetar el namespace default para la inyección automática de sidecars
echo "Habilitando la inyección automática de sidecars en el namespace default..."
kubectl label namespace default istio-injection=enabled --overwrite

# Reiniciar los pods para que se inyecte el sidecar
echo "Reiniciando los pods para que tomen la configuración de Istio..."
kubectl delete pod --all --namespace=default

# Aplicar la configuración de Istio
echo "Aplicando Gateway..."
kubectl apply -f ../kubernetes/istio/gateway.yaml

echo "Aplicando VirtualServices..."
kubectl apply -f ../kubernetes/istio/virtualservices.yaml

echo "Aplicando DestinationRules..."
kubectl apply -f ../kubernetes/istio/destinationrule.yaml

# Verificar si los addons de Istio ya están instalados
echo "Verificando si los addons de Istio están instalados..."
if ! kubectl get pods -n istio-system | grep -q kiali; then
    echo "Instalando los addons de Istio..."
    kubectl apply -f https://raw.githubusercontent.com/istio/istio/release-1.24/samples/addons/kiali.yaml
    kubectl apply -f https://raw.githubusercontent.com/istio/istio/release-1.24/samples/addons/prometheus.yaml
    kubectl apply -f https://raw.githubusercontent.com/istio/istio/release-1.24/samples/addons/grafana.yaml
    kubectl apply -f https://raw.githubusercontent.com/istio/istio/release-1.24/samples/addons/jaeger.yaml
else
    echo "Los addons de Istio ya están instalados"
fi

echo "Configuración de Istio completada"
