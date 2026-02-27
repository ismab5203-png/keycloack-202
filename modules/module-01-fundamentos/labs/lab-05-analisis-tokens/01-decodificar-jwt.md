# Lab 05 — Análisis de Tokens

## Paso 01 — Decodificar el Access Token

---

## 🎯 Objetivo

Decodificar el `access_token` recibido para inspeccionar su contenido.

---

## 📋 Copiar el Access Token

En la respuesta JSON del paso anterior localiza:

```
"access_token": "eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9..."
```

Copia únicamente el valor del token (sin comillas).

---

## 🔎 Estructura de un JWT

Un JWT está compuesto por tres partes separadas por puntos:

```
HEADER.PAYLOAD.SIGNATURE
```

Ejemplo:

```
eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIn0.SflKxwRJSMeKKF2QT4fwpMeJf36POk6yJV_adQssw5c
```

---

## 🌐 Decodificar en una herramienta online

Abre:

```
https://jwt.io
```

Pega el token en el campo izquierdo.

---

## 🔎 Analizar el contenido

En la parte derecha podrás ver:

### Header

* alg → algoritmo de firma
* typ → tipo de token

### Payload

* iss → issuer
* sub → identificador del usuario
* aud → audiencia
* exp → expiración
* iat → fecha de emisión
* preferred_username → usuario autenticado
* realm_access → roles asignados

---

## 🧠 Qué estamos observando

* El token no está cifrado, está firmado.
* Cualquiera puede leer el contenido.
* La seguridad depende de la firma.
* El servidor validará la firma antes de aceptar el token.

En el siguiente paso analizaremos los claims más importantes del payload.
