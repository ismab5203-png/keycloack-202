#!/bin/bash

BASE="modules/module-01-fundamentos/labs"

# ==============================
# LAB 01 - KEYCLOAK DEV
# ==============================
mkdir -p $BASE/lab-01-keycloak-dev
touch $BASE/lab-01-keycloak-dev/01-crear-docker-compose.md
touch $BASE/lab-01-keycloak-dev/02-definir-servicio-keycloak.md
touch $BASE/lab-01-keycloak-dev/03-levantar-contenedor.md
touch $BASE/lab-01-keycloak-dev/04-validar-admin-console.md

# ==============================
# LAB 02 - PRIMER REALM
# ==============================
mkdir -p $BASE/lab-02-primer-realm
touch $BASE/lab-02-primer-realm/01-crear-realm.md
touch $BASE/lab-02-primer-realm/02-crear-usuario.md
touch $BASE/lab-02-primer-realm/03-probar-login-ui.md

# ==============================
# LAB 03 - CLIENTE OIDC
# ==============================
mkdir -p $BASE/lab-03-cliente-oidc
touch $BASE/lab-03-cliente-oidc/01-crear-cliente-publico.md
touch $BASE/lab-03-cliente-oidc/02-configurar-redirect-uris.md
touch $BASE/lab-03-cliente-oidc/03-revisar-endpoints-oidc.md

# ==============================
# LAB 04 - AUTH CODE FLOW
# ==============================
mkdir -p $BASE/lab-04-authorization-code-flow
touch $BASE/lab-04-authorization-code-flow/01-construir-url-autorizacion.md
touch $BASE/lab-04-authorization-code-flow/02-obtener-code.md
touch $BASE/lab-04-authorization-code-flow/03-intercambiar-code-por-token.md

# ==============================
# LAB 05 - ANALISIS TOKENS
# ==============================
mkdir -p $BASE/lab-05-analisis-tokens
touch $BASE/lab-05-analisis-tokens/01-decodificar-jwt.md
touch $BASE/lab-05-analisis-tokens/02-analizar-claims.md
touch $BASE/lab-05-analisis-tokens/03-validar-firma-jwks.md

echo "Labs del módulo 1 creados correctamente."
