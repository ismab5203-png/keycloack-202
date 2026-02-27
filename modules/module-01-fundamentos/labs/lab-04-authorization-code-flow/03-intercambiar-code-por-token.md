# Lab 04 — Authorization Code Flow

## Paso 03 — Intercambiar el Authorization Code por un Token

---

## 🎯 Objetivo

Enviar el `code` obtenido al **token endpoint** para recibir un Access Token e ID Token.

---

## 🔗 Token Endpoint

El endpoint es:

```
http://localhost:8080/realms/training/protocol/openid-connect/token
```

---

## ▶️ Ejecutar la petición con curl

Sustituye `YOUR_CODE_AQUI` por el valor capturado en el paso anterior:

```bash
curl -X POST http://localhost:8080/realms/training/protocol/openid-connect/token \
  -H "Content-Type: application/x-www-form-urlencoded" \
  -d "grant_type=authorization_code" \
  -d "client_id=spa-client" \
  -d "code=YOUR_CODE_AQUI" \
  -d "redirect_uri=http://localhost:4200"
```

---

## 🔎 Qué debería devolver

Recibirás una respuesta JSON similar a:

```json
{
  "access_token": "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9...",
  "expires_in": 300,
  "refresh_expires_in": 1800,
  "refresh_token": "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9...",
  "token_type": "Bearer",
  "id_token": "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9...",
  "scope": "openid profile email"
}
```

---

## 🧠 Qué hemos conseguido

* Hemos ejecutado manualmente el flujo Authorization Code.
* Hemos intercambiado un `code` por tokens reales.
* Hemos recibido:

  * access_token
  * id_token
  * refresh_token

---

## 📌 Qué haremos después

En el siguiente laboratorio analizaremos el contenido del Access Token y validaremos su firma.
