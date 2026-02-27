# Lab 04 — Authorization Code Flow

## Paso 01 — Construir la URL de autorización manualmente

---

## 🎯 Objetivo

Construir manualmente la URL del Authorization Endpoint para iniciar el flujo Authorization Code contra el cliente `spa-client`.

---

## 🧠 Contexto

En el flujo Authorization Code:

1. El navegador es redirigido al **authorization endpoint**.
2. El usuario se autentica.
3. Keycloak redirige de vuelta con un `code`.
4. Ese `code` se intercambia por un token.

En este paso ejecutaremos manualmente el punto 1.

---

## 🔗 Construir la URL

La estructura base es:

```
http://localhost:8080/realms/training/protocol/openid-connect/auth
```

Añade los siguientes parámetros:

```
response_type=code
client_id=spa-client
redirect_uri=http://localhost:4200
scope=openid
state=12345
```

La URL completa quedaría así:

```
http://localhost:8080/realms/training/protocol/openid-connect/auth?response_type=code&client_id=spa-client&redirect_uri=http://localhost:4200&scope=openid&state=12345
```

---

## 🌐 Ejecutar en el navegador

Copia la URL completa en el navegador.

Deberías ver:

* La pantalla de login de Keycloak.
* Autenticación contra el realm `training`.

---

## 🔐 Iniciar sesión

Introduce:

* Usuario: user1
* Contraseña: password

---

## 🔎 Qué debería ocurrir

Tras autenticarse:

* El navegador intentará redirigir a:

  [http://localhost:4200](http://localhost:4200)

* En la barra de direcciones aparecerá un parámetro:

  code=XXXXXXXX

Ese es el Authorization Code.

---

En el siguiente paso intercambiaremos ese `code` por un token.
