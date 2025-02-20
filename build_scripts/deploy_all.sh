#!/bin/bash

echo "Iniciando despliegue completo de la aplicación en Kubernetes..."

# Iniciar Minikube y herramientas de monitoreo
echo "Iniciando Minikube y herramientas de monitoreo..."
bash setup_minikube.sh

# Desplegar la base de datos
echo "Desplegando base de datos..."
bash deploy_database.sh

# Desplegar los microservicios y el frontend
echo "Desplegando microservicios y frontend..."
bash deploy_services.sh

# Configurar Istio
echo "Configurando Istio..."
bash setup_istio.sh

# Configurar el túnel para acceder a los servicios expuestos en LoadBalancer
echo "Configurando túnel de Minikube..."
nohup minikube tunnel > /dev/null 2>&1 &

# Lanzar el dashboard de Kubernetes en segundo plano
echo "Iniciando el dashboard de Kubernetes..."
nohup minikube dashboard > /dev/null 2>&1 &

# Iniciar Kiali para monitorear Istio
echo "Iniciando Kiali para Istio..."
nohup istioctl dashboard kiali > /dev/null 2>&1 &

# Verificación final
echo "Verificando que todos los Pods estén corriendo..."
kubectl get pods --namespace=default

echo "Despliegue completo finalizado con éxito"