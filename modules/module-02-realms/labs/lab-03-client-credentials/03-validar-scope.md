# Lab 03 — Client Credentials Flow

## Paso 03 — Analizar el Token de la Service Account

---

## 🎯 Objetivo

Examinar el `access_token` obtenido mediante Client Credentials y comprender sus diferencias respecto a un token de usuario.

---

## 📋 Decodificar el Token

Copia el valor de `access_token` recibido en el paso anterior y decodifícalo utilizando:

```
https://jwt.io
```

---

## 🔎 Analizar el Payload

Observa los siguientes claims:

### iss

Debe indicar:

```
http://localhost:8080/realms/training
```

---

### sub

Representa la **Service Account** del cliente, no un usuario humano.

Normalmente tendrá un valor similar a:

```
service-account-backend-client
```

---

### preferred_username

Debe mostrar algo similar a:

```
service-account-backend-client
```

---

### realm_access

Puede estar vacío si no se han asignado roles a la Service Account.

---

## 🧠 Diferencia clave con Authorization Code Flow

En Client Credentials Flow:

* No existe autenticación de usuario.
* No hay interacción humana.
* El token representa al cliente.
* Se utiliza para comunicación entre servicios.

---

## 📌 Qué hemos validado

* El cliente confidencial puede autenticarse.
* Keycloak emite un token válido.
* El token identifica correctamente a la Service Account.
* El flujo máquina a máquina funciona correctamente.

En el siguiente laboratorio trabajaremos con múltiples realms.
