# Lab 03 — Crear un cliente OIDC

## Paso 02 — Configurar correctamente las Redirect URIs

---

## 🎯 Objetivo

Asegurar que el cliente `spa-client` tiene configuradas correctamente las URLs de redirección necesarias para el flujo Authorization Code.

---

## 📍 Acceder al cliente

1. Ir a **Clients**.
2. Seleccionar el cliente:

   spa-client

---

## 🌐 Revisar configuración de acceso

En la sección **Access settings** verifica:

* Client type: OpenID Connect
* Client authentication: OFF
* Standard flow: ON

---

## 🔁 Configurar Redirect URIs

En el apartado **Valid redirect URIs** debe aparecer:

```
http://localhost:4200/*
```

Esto permite que Keycloak redirija al navegador después de la autenticación.

---

## 🌍 Configurar Web Origins

En el apartado **Web origins** debe aparecer:

```
http://localhost:4200
```

Esto habilita CORS para la aplicación SPA.

---

## 💾 Guardar cambios

Pulsa **Save** si has realizado alguna modificación.

---

## ✅ Verificación

La configuración debe permitir:

* Redirección tras autenticación.
* Comunicación segura entre el navegador y Keycloak.
* Soporte para aplicaciones públicas tipo SPA.

En el siguiente paso revisaremos los endpoints OIDC generados por el realm.
