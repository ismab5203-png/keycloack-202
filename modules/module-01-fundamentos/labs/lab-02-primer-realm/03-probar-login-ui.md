# Lab 02 — Crear el primer Realm

## Paso 03 — Probar el login con el usuario creado

---

## 🎯 Objetivo

Verificar que el usuario `user1` puede autenticarse correctamente en el realm `training`.

---

## 🌐 Acceder a la página de login del realm

Abre en el navegador:

```
http://localhost:8080/realms/training/account
```

Esta URL fuerza el login contra el realm `training`.

---

## 🔐 Iniciar sesión

Introduce las credenciales configuradas en el paso anterior:

* Usuario: user1
* Contraseña: password

Pulsa **Sign in**.

---

## ✅ Verificación

Si todo está correctamente configurado:

* El usuario accederá a la consola de cuenta.
* Verás información del perfil del usuario.
* No se solicitará cambio de contraseña.

---

## 🧠 Qué estamos validando

* El realm `training` está operativo.
* El usuario pertenece correctamente al realm.
* Las credenciales fueron configuradas correctamente.
* El flujo básico de autenticación funciona.

En el siguiente laboratorio comenzaremos a trabajar con clientes OIDC.
