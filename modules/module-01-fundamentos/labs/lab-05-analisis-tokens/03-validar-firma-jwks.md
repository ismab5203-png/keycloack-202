# Lab 05 — Análisis de Tokens

## Paso 03 — Validar la firma del Token usando JWKS

---

## 🎯 Objetivo

Comprobar que el `access_token` está correctamente firmado por Keycloak utilizando la clave pública expuesta por el realm.

---

## 🔗 Localizar el endpoint JWKS

El endpoint de claves públicas del realm `training` es:

```
http://localhost:8080/realms/training/protocol/openid-connect/certs
```

Abre esa URL en el navegador.

---

## 🔎 Qué deberías ver

Un JSON similar a:

```
{
  "keys": [
    {
      "kid": "abc123...",
      "kty": "RSA",
      "alg": "RS256",
      "use": "sig",
      ...
    }
  ]
}
```

Este endpoint expone la clave pública utilizada para firmar los tokens.

---

## 🧠 Relación entre el token y la clave

En el `access_token`, dentro del **header**, aparece un campo:

```
kid
```

Ese valor identifica qué clave se utilizó para firmar el token.

Debe coincidir con uno de los `kid` publicados en el endpoint JWKS.

---

## 🔐 Qué significa validar la firma

Validar la firma implica:

* Usar la clave pública correspondiente.
* Verificar que la firma del JWT coincide.
* Confirmar que el token no ha sido alterado.

---

## 📌 Qué estamos comprobando

* El token fue emitido por nuestro Keycloak.
* El token no ha sido modificado.
* La infraestructura de firma funciona correctamente.
* La validación es posible sin necesidad de compartir claves privadas.

A partir del siguiente módulo comenzaremos a trabajar con roles y autorización.
