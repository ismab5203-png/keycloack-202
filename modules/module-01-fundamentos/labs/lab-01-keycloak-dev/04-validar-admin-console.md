# Lab 01 — Levantar Keycloak en modo desarrollo

## Paso 04 — Validar la consola de administración

---

## 🎯 Objetivo

Confirmar que Keycloak está funcionando correctamente y que podemos acceder a la consola de administración con las credenciales configuradas.

---

## 🌐 Acceder desde el navegador

Abre en el navegador del Codespace:

```
http://localhost:8080
```

Deberías ver la página inicial de Keycloak.

---

## 🔐 Acceder al panel de administración

Accede a:

```
http://localhost:8080/admin
```

Introduce las credenciales configuradas en el docker-compose:

* Usuario: admin
* Contraseña: admin

---

## ✅ Verificación correcta

Si todo está funcionando correctamente:

* Accederás al panel de administración.
* Verás el realm por defecto llamado `master`.
* En el menú lateral aparecerán secciones como:

  * Realm Settings
  * Clients
  * Users
  * Roles

---

## 🧪 Validación adicional desde terminal

Puedes comprobar que el servicio responde ejecutando:

```bash
curl http://localhost:8080
```

Deberías recibir una respuesta HTML.

---

## 📌 Qué estamos validando realmente

* El contenedor está activo.
* El puerto está correctamente expuesto.
* El usuario administrador se creó correctamente.
* Keycloak está operativo en modo desarrollo.
