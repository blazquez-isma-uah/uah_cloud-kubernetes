#!/bin/bash

echo "🚀 Iniciando despliegue completo de la aplicación en Kubernetes..."

# 1️⃣ Iniciar Minikube y herramientas de monitoreo
echo "🛠️ Iniciando Minikube y herramientas de monitoreo..."
bash setup_minikube.sh

# 2️⃣ Desplegar la base de datos
echo "💾 Desplegando base de datos..."
bash deploy_database.sh

# 3️⃣ Desplegar los microservicios y el frontend
echo "🌐 Desplegando microservicios y frontend..."
bash deploy_services.sh

# 4️⃣ Configurar Istio
echo "🔀 Configurando Istio..."
bash setup_istio.sh

# 5️⃣ Verificación final
echo "✅ Verificando que todos los servicios estén en estado Running..."
kubectl get pods --namespace=default


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

echo "🎉 ¡Despliegue completo finalizado con éxito!"
