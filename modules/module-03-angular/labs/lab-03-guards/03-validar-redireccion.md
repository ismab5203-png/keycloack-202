# Lab 03 — Guards

## Paso 03 — Validar la redirección y protección de rutas

---

## 🎯 Objetivo

Comprobar que la ruta `/protected` no es accesible sin autenticación y que el guard redirige correctamente al login.

---

## 🧪 Escenario 1 — Usuario autenticado

1. Asegúrate de estar logueado.
2. Navega manualmente a:

   [http://localhost:4200/protected](http://localhost:4200/protected)

Resultado esperado:

* La vista `Protected` se muestra correctamente.
* No se produce redirección.

---

## 🧪 Escenario 2 — Usuario no autenticado

1. Cierra sesión manualmente desde Keycloak o elimina la sesión.
2. Abre directamente:

   [http://localhost:4200/protected](http://localhost:4200/protected)

Resultado esperado:

* No se muestra la vista protegida.
* El guard ejecuta `keycloak.login()`.
* El navegador redirige a Keycloak.
* Tras autenticarse, vuelve a `/protected`.

---

## 🔎 Qué estamos validando

* El `authGuard` se ejecuta antes de activar la ruta.
* Las rutas protegidas no son accesibles sin sesión válida.
* La redirección al login es automática.
* El flujo funciona incluso si se accede directamente por URL.

---

## 🧠 Estado actual de la aplicación

* Angular está integrado con Keycloak.
* El login es obligatorio.
* Las rutas pueden protegerse de forma selectiva.
* La base de autorización está preparada para el siguiente laboratorio.
