#!/bin/bash
minikube stop
minikube start
minikube tunnel &
minikube dashboard &
istioctl dashboard kiali &
