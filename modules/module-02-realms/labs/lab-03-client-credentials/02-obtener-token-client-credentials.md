# Lab 03 — Client Credentials Flow

## Paso 02 — Obtener un Token mediante Client Credentials

---

## 🎯 Objetivo

Solicitar un `access_token` utilizando el flujo Client Credentials desde el cliente `backend-client`.

---

## 🔗 Token Endpoint

El endpoint del realm `training` es:

```
http://localhost:8080/realms/training/protocol/openid-connect/token
```

---

## ▶️ Ejecutar la petición

Sustituye `CLIENT_SECRET_AQUI` por el valor copiado en el paso anterior:

```bash
curl -X POST http://localhost:8080/realms/training/protocol/openid-connect/token \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -d "grant_type=client_credentials" \
  -d "client_id=backend-client" \
  -d "client_secret=CLIENT_SECRET_AQUI"
```

---

## 🔎 Respuesta esperada

Recibirás un JSON similar a:

```
{
  "access_token": "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9...",
  "expires_in": 300,
  "token_type": "Bearer",
  "scope": "profile email"
}
```

---

## 🧠 Qué estamos observando

* No hay usuario autenticado.
* El token pertenece a la **Service Account** del cliente.
* El `sub` del token representa al cliente, no a un usuario humano.
* Este flujo es ideal para comunicación backend a backend.

En el siguiente paso analizaremos el contenido del token generado.
