# Lab 02 — Integrar Keycloak

## Paso 03 — Validar el login automático

---

## 🎯 Objetivo

Verificar que la aplicación Angular redirige automáticamente a Keycloak y que el flujo de autenticación funciona correctamente.

---

## ▶️ Reiniciar la aplicación

Desde:

```
apps/angular-app/angular-app
```

Ejecutar:

```bash
npm start
```

---

## 🌐 Abrir la aplicación

Ir a:

```
http://localhost:4200
```

---

## 🔐 Comportamiento esperado

Al cargar la aplicación:

* Angular NO debe mostrarse inmediatamente.
* El navegador debe redirigir a Keycloak.
* Debe aparecer la pantalla de login del realm `training`.

---

## 🔑 Iniciar sesión

Usar:

```
Usuario: user1
Contraseña: password
```

---

## 🔁 Redirección correcta

Tras autenticarse:

* Keycloak debe redirigir de nuevo a:

  ```
  http://localhost:4200
  ```

* La aplicación Angular debe mostrarse correctamente.

* No deben aparecer errores en consola.

---

## 🧠 Qué estamos validando

* El flujo Authorization Code con PKCE funciona desde Angular.
* Keycloak se inicializa antes del bootstrap.
* El usuario queda autenticado en la aplicación.
* La sesión se mantiene activa tras el redireccionamiento.
