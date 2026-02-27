#!/bin/bash

# ==========================================
# CREACIÓN COMPLETA DE LABS PARA LOS 8 MÓDULOS
# ==========================================

# Función genérica
create_lab () {
  MODULE=$1
  LAB=$2
  shift 2
  BASE="modules/$MODULE/labs/$LAB"

  mkdir -p $BASE

  for STEP in "$@"
  do
    touch "$BASE/$STEP"
  done
}

# =====================================================
# MODULE 01 — FUNDAMENTOS
# =====================================================

create_lab module-01-fundamentos lab-01-keycloak-dev \
  01-crear-docker-compose.md \
  02-definir-servicio-keycloak.md \
  03-levantar-contenedor.md \
  04-validar-admin-console.md

create_lab module-01-fundamentos lab-02-primer-realm \
  01-crear-realm.md \
  02-crear-usuario.md \
  03-probar-login-ui.md

create_lab module-01-fundamentos lab-03-cliente-oidc \
  01-crear-cliente-publico.md \
  02-configurar-redirect-uris.md \
  03-revisar-endpoints-oidc.md

create_lab module-01-fundamentos lab-04-authorization-code-flow \
  01-construir-url-autorizacion.md \
  02-obtener-code.md \
  03-intercambiar-code-por-token.md

create_lab module-01-fundamentos lab-05-analisis-tokens \
  01-decodificar-jwt.md \
  02-analizar-claims.md \
  03-validar-firma-jwks.md


# =====================================================
# MODULE 02 — REALMS
# =====================================================

create_lab module-02-realms lab-01-modelado-roles \
  01-crear-realm-roles.md \
  02-crear-client-roles.md \
  03-roles-compuestos.md

create_lab module-02-realms lab-02-grupos-y-asignaciones \
  01-crear-grupos.md \
  02-asignar-roles-a-grupos.md \
  03-validar-asignaciones.md

create_lab module-02-realms lab-03-client-credentials \
  01-crear-service-account.md \
  02-obtener-token-client-credentials.md \
  03-validar-scope.md

create_lab module-02-realms lab-04-multi-realm \
  01-crear-segundo-realm.md \
  02-configurar-cliente.md \
  03-validar-aislamiento.md


# =====================================================
# MODULE 03 — ANGULAR
# =====================================================

create_lab module-03-angular lab-01-crear-angular-app \
  01-generar-proyecto.md \
  02-configuracion-base.md \
  03-ejecutar-app.md

create_lab module-03-angular lab-02-integrar-keycloak \
  01-instalar-keycloak-js.md \
  02-configurar-init.md \
  03-validar-login.md

create_lab module-03-angular lab-03-guards \
  01-crear-guard.md \
  02-proteger-rutas.md \
  03-validar-redireccion.md

create_lab module-03-angular lab-04-token-ui \
  01-mostrar-claims.md \
  02-simular-expiracion.md \
  03-refresh-token.md

create_lab module-03-angular lab-05-logout \
  01-logout-centralizado.md \
  02-validar-sesion.md


# =====================================================
# MODULE 04 — BACKEND
# =====================================================

create_lab module-04-backend lab-01-crear-api-node \
  01-inicializar-proyecto.md \
  02-crear-servidor-express.md \
  03-crear-endpoint.md

create_lab module-04-backend lab-02-validacion-jwt \
  01-instalar-dependencias.md \
  02-crear-middleware.md \
  03-validar-jwks.md

create_lab module-04-backend lab-03-proteger-endpoints \
  01-validar-roles.md \
  02-validar-scopes.md \
  03-testear-con-curl.md

create_lab module-04-backend lab-04-service-account \
  01-crear-cliente-confidencial.md \
  02-consumir-api-con-token.md


# =====================================================
# MODULE 05 — MFA
# =====================================================

create_lab module-05-mfa lab-01-custom-flow \
  01-duplicar-flow.md \
  02-modificar-ejecuciones.md \
  03-validar-flujo.md

create_lab module-05-mfa lab-02-mfa-obligatorio \
  01-configurar-totp.md \
  02-forzar-required-action.md \
  03-validar-mfa.md

create_lab module-05-mfa lab-03-theme \
  01-crear-theme.md \
  02-personalizar-login.md \
  03-validar-cambios.md


# =====================================================
# MODULE 06 — FEDERATION
# =====================================================

create_lab module-06-federation lab-01-openldap \
  01-definir-servicio-ldap.md \
  02-levantar-ldap.md \
  03-validar-conexion.md

create_lab module-06-federation lab-02-integracion-ldap \
  01-configurar-federacion.md \
  02-sincronizar-usuarios.md \
  03-validar-login-ldap.md

create_lab module-06-federation lab-03-identity-brokering \
  01-configurar-segundo-realm.md \
  02-configurar-idp.md \
  03-validar-broker.md


# =====================================================
# MODULE 07 — SECURITY
# =====================================================

create_lab module-07-security lab-01-nginx \
  01-definir-servicio-nginx.md \
  02-configurar-proxy.md \
  03-validar-headers.md

create_lab module-07-security lab-02-ssl \
  01-generar-certificado.md \
  02-configurar-https.md \
  03-validar-canal-seguro.md

create_lab module-07-security lab-03-hardening \
  01-configurar-expiraciones.md \
  02-restringir-clientes.md \
  03-validar-seguridad.md


# =====================================================
# MODULE 08 — HA
# =====================================================

create_lab module-08-ha lab-01-postgresql \
  01-definir-servicio-postgres.md \
  02-configurar-keycloak-db.md \
  03-validar-migracion.md

create_lab module-08-ha lab-02-clustering \
  01-multiples-instances.md \
  02-configurar-cache.md \
  03-validar-sesion-compartida.md

create_lab module-08-ha lab-03-backup \
  01-exportar-realm.md \
  02-importar-realm.md \
  03-validar-restauracion.md

echo "Todos los labs creados correctamente."
