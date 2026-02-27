# Lab 03 — Crear un cliente OIDC

## Paso 01 — Crear un cliente público

---

## 🎯 Objetivo

Crear un cliente OIDC en el realm `training` que represente una aplicación pública.

---

## 📍 Verificar el realm activo

Asegúrate de que el realm seleccionado es:

```
training
```

---

## ➕ Crear el cliente

1. En el menú lateral, haz clic en **Clients**.

2. Pulsa **Create client**.

3. Configura los siguientes valores:

   Client type: OpenID Connect
   Client ID: spa-client

4. Pulsa **Next**.

---

## ⚙️ Configuración del cliente

En la siguiente pantalla:

* Client authentication: OFF
* Authorization: OFF
* Standard flow: ON
* Direct access grants: OFF
* Service accounts roles: OFF

Pulsa **Next**.

---

## 🌐 Configuración de URLs

En la pantalla de configuración:

* Root URL:

  [http://localhost:4200](http://localhost:4200)

* Valid redirect URIs:

  [http://localhost:4200/](http://localhost:4200/)*

* Web origins:

  [http://localhost:4200](http://localhost:4200)

Pulsa **Save**.

---

## ✅ Verificación

El cliente `spa-client` debe aparecer en la lista de clientes del realm `training`.

Este cliente representará una aplicación pública tipo SPA.
