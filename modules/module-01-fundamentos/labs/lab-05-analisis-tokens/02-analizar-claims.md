# Lab 05 — Análisis de Tokens

## Paso 02 — Analizar los Claims del Access Token

---

## 🎯 Objetivo

Comprender el significado de los principales claims incluidos en el `access_token`.

---

## 📋 Localizar el Payload

En la herramienta utilizada en el paso anterior, identifica la sección **Payload** del token.

---

## 🔎 Claims más importantes

### iss (Issuer)

Indica quién emitió el token.

Debe tener un valor similar a:

```
http://localhost:8080/realms/training
```

---

### sub (Subject)

Identificador único del usuario autenticado dentro del realm.

No es necesariamente el username.

---

### aud (Audience)

Indica para qué cliente está destinado el token.

Debe incluir:

```
spa-client
```

---

### exp (Expiration Time)

Marca el momento exacto en el que el token dejará de ser válido.

Está expresado en formato UNIX timestamp.

---

### iat (Issued At)

Indica cuándo fue emitido el token.

---

### preferred_username

Nombre de usuario autenticado.

Debe mostrar:

```
user1
```

---

### realm_access

Incluye los roles asignados al usuario dentro del realm.

Ejemplo:

```
"realm_access": {
  "roles": ["offline_access", "uma_authorization"]
}
```

---

## 🧠 Qué estamos validando

* El token pertenece al realm correcto.
* El token fue emitido para el cliente correcto.
* El usuario autenticado es el esperado.
* El token tiene fecha de expiración.
* Los roles están presentes en el payload.

En el siguiente paso validaremos la firma del token utilizando el endpoint JWKS.
