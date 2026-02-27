# Lab 01 — Levantar Keycloak en modo desarrollo

## Paso 03 — Levantar el contenedor

---

## 🎯 Objetivo

Iniciar el contenedor de Keycloak definido en el `docker-compose.yml` y verificar que arranca correctamente.

---

## ▶️ Levantar el servicio

Desde la raíz del proyecto ejecuta:

```bash
docker compose up
```

Si quieres ejecutarlo en segundo plano:

```bash
docker compose up -d
```

---

## 🔎 ¿Qué debería ocurrir?

* Docker descargará la imagen de Keycloak (si no existe localmente).
* Se iniciará el contenedor.
* Verás logs en consola indicando que Keycloak está arrancando.
* Finalmente aparecerá un mensaje indicando que el servidor está listo.

---

## 🧪 Verificar que el contenedor está activo

En otra terminal ejecuta:

```bash
docker ps
```

Deberías ver un contenedor llamado algo similar a:

```
keycloak
```

Con el puerto 8080 expuesto.

---

## 🌐 Probar acceso

En el navegador del Codespace abre:

```
http://localhost:8080
```

Deberías ver la página inicial de Keycloak.

---

## 📋 Acceder al panel de administración

Accede a:

```
http://localhost:8080/admin
```

Credenciales:

* Usuario: admin
* Contraseña: admin
