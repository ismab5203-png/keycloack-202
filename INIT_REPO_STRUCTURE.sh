#!/bin/bash

# ==========================================
# KEYCLOAK TRAINING - ESTRUCTURA DEFINITIVA
# ==========================================

# Root
touch README.md

# Infraestructura
mkdir -p infra
touch infra/docker-compose.yml
touch infra/.env

# Aplicaciones evolutivas
mkdir -p apps/angular-app
mkdir -p apps/api-node

# Scripts auxiliares
mkdir -p scripts

# ==========================================
# FUNCIÓN PARA CREAR MÓDULOS
# ==========================================

create_module () {
  MODULE_NAME=$1

  mkdir -p modules/$MODULE_NAME/contenidos
  mkdir -p modules/$MODULE_NAME/labs

  touch modules/$MODULE_NAME/README.md
}

# Crear directorio modules
mkdir -p modules

# ==========================================
# CREACIÓN DE LOS 8 MÓDULOS
# ==========================================

create_module "module-01-fundamentos"
create_module "module-02-realms"
create_module "module-03-angular"
create_module "module-04-backend"
create_module "module-05-mfa"
create_module "module-06-federation"
create_module "module-07-security"
create_module "module-08-ha"

echo "Estructura base creada correctamente."
