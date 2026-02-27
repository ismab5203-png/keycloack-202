# Lab 04 — Authorization Code Flow

## Paso 02 — Obtener el Authorization Code

---

## 🎯 Objetivo

Capturar el `code` generado por Keycloak tras la autenticación.

---

## 🔁 Recordatorio del paso anterior

Después de acceder a la URL de autorización y autenticarse, el navegador redirige a:

```
http://localhost:4200?code=XXXXXXXX&state=12345
```

Aunque la aplicación en el puerto 4200 no exista todavía, el navegador mostrará la URL en la barra de direcciones.

---

## 📋 Capturar el valor del code

En la barra de direcciones del navegador localiza:

```
code=XXXXXXXX
```

Copia únicamente el valor después del signo igual.

Ejemplo:

```
code=3c4b0f9a-xxxx-xxxx-xxxx-xxxxxxxxxxxx
```

Ese valor es el Authorization Code.

---

## 🧠 Qué es el Authorization Code

* Es temporal.
* Solo puede usarse una vez.
* Tiene una validez muy corta.
* No es un token.
* Debe intercambiarse por un token en el token endpoint.

---

## ⚠️ Importante

Si reutilizas un `code` ya usado, el intercambio fallará.

Si esperas demasiado tiempo, el `code` expirará.

En el siguiente paso intercambiaremos este `code` por un Access Token.
