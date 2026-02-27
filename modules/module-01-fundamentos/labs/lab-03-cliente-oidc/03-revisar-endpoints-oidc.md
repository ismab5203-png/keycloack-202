# Lab 03 — Crear un cliente OIDC

## Paso 03 — Revisar los endpoints OIDC del realm

---

## 🎯 Objetivo

Identificar y comprender los endpoints OIDC que Keycloak expone para el realm `training`.

---

## 📍 Acceder a la configuración del realm

1. En el menú lateral, haz clic en **Realm settings**.
2. Ve a la pestaña **General**.
3. Localiza el apartado **OpenID Endpoint Configuration**.
4. Pulsa el enlace disponible.

También puedes acceder directamente desde el navegador:

```
http://localhost:8080/realms/training/.well-known/openid-configuration
```

---

## 🔎 Qué verás

Se mostrará un documento JSON con información como:

* issuer
* authorization_endpoint
* token_endpoint
* userinfo_endpoint
* jwks_uri
* end_session_endpoint

---

## 🧠 Qué significa esto

Keycloak publica automáticamente la configuración OIDC del realm.

Esto permite que:

* Aplicaciones cliente descubran automáticamente los endpoints.
* Bibliotecas OIDC se configuren dinámicamente.
* Se pueda validar la firma de los tokens usando el endpoint JWKS.

---

## 📌 Endpoint importantes

Authorization endpoint:

```
/realms/training/protocol/openid-connect/auth
```

Token endpoint:

```
/realms/training/protocol/openid-connect/token
```

JWKS endpoint:

```
/realms/training/protocol/openid-connect/certs
```

---

## ✅ Verificación

El endpoint `.well-known` debe responder con un JSON válido.

En el siguiente laboratorio ejecutaremos manualmente el flujo Authorization Code.
