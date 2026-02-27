#!/bin/bash

# ==========================================
# CREACIÓN DE ARCHIVOS DE CONTENIDOS POR MÓDULO
# ==========================================

# ------------------------------
# MODULE 01 - FUNDAMENTOS
# ------------------------------
touch modules/module-01-fundamentos/contenidos/01-iam-moderno.md
touch modules/module-01-fundamentos/contenidos/02-oauth2-vs-oidc.md
touch modules/module-01-fundamentos/contenidos/03-tokens.md
touch modules/module-01-fundamentos/contenidos/04-flujos-autenticacion.md
touch modules/module-01-fundamentos/contenidos/05-arquitectura-keycloak.md
touch modules/module-01-fundamentos/contenidos/06-instalacion-dev.md

# ------------------------------
# MODULE 02 - REALMS
# ------------------------------
touch modules/module-02-realms/contenidos/01-realm-vs-client-roles.md
touch modules/module-02-realms/contenidos/02-grupos-y-roles-compuestos.md
touch modules/module-02-realms/contenidos/03-service-accounts.md
touch modules/module-02-realms/contenidos/04-policies-y-permissions.md
touch modules/module-02-realms/contenidos/05-modelado-organizativo.md

# ------------------------------
# MODULE 03 - ANGULAR
# ------------------------------
touch modules/module-03-angular/contenidos/01-keycloak-js.md
touch modules/module-03-angular/contenidos/02-authorization-code-pkce.md
touch modules/module-03-angular/contenidos/03-guards.md
touch modules/module-03-angular/contenidos/04-token-lifecycle.md
touch modules/module-03-angular/contenidos/05-refresh-automatico.md
touch modules/module-03-angular/contenidos/06-logout-centralizado.md

# ------------------------------
# MODULE 04 - BACKEND
# ------------------------------
touch modules/module-04-backend/contenidos/01-bearer-tokens.md
touch modules/module-04-backend/contenidos/02-validacion-jwt.md
touch modules/module-04-backend/contenidos/03-jwks.md
touch modules/module-04-backend/contenidos/04-roles-y-scopes.md
touch modules/module-04-backend/contenidos/05-service-to-service.md

# ------------------------------
# MODULE 05 - MFA
# ------------------------------
touch modules/module-05-mfa/contenidos/01-authentication-flows.md
touch modules/module-05-mfa/contenidos/02-required-actions.md
touch modules/module-05-mfa/contenidos/03-mfa-totp.md
touch modules/module-05-mfa/contenidos/04-gestion-avanzada-usuarios.md
touch modules/module-05-mfa/contenidos/05-themes.md
touch modules/module-05-mfa/contenidos/06-introduccion-spi.md

# ------------------------------
# MODULE 06 - FEDERATION
# ------------------------------
touch modules/module-06-federation/contenidos/01-user-federation.md
touch modules/module-06-federation/contenidos/02-ldap.md
touch modules/module-06-federation/contenidos/03-sincronizacion.md
touch modules/module-06-federation/contenidos/04-identity-brokering.md
touch modules/module-06-federation/contenidos/05-arquitecturas-hibridas.md
touch modules/module-06-federation/contenidos/06-introduccion-saml.md

# ------------------------------
# MODULE 07 - SECURITY
# ------------------------------
touch modules/module-07-security/contenidos/01-pkce-deep-dive.md
touch modules/module-07-security/contenidos/02-estrategias-expiracion.md
touch modules/module-07-security/contenidos/03-ssl-y-certificados.md
touch modules/module-07-security/contenidos/04-reverse-proxy-nginx.md
touch modules/module-07-security/contenidos/05-x-forwarded-headers.md
touch modules/module-07-security/contenidos/06-hardening.md

# ------------------------------
# MODULE 08 - HA
# ------------------------------
touch modules/module-08-ha/contenidos/01-migracion-postgresql.md
touch modules/module-08-ha/contenidos/02-configuracion-produccion.md
touch modules/module-08-ha/contenidos/03-clustering.md
touch modules/module-08-ha/contenidos/04-export-import-realms.md
touch modules/module-08-ha/contenidos/05-backup-recuperacion.md
touch modules/module-08-ha/contenidos/06-health-checks.md
touch modules/module-08-ha/contenidos/07-api-gateway-conceptual.md

echo "Archivos de contenidos creados correctamente."
