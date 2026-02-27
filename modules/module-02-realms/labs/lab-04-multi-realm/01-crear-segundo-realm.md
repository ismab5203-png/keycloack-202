# Lab 04 — Multi-Realm

## Paso 01 — Crear un segundo Realm

---

## 🎯 Objetivo

Crear un segundo realm para observar el aislamiento entre configuraciones, usuarios y clientes.

---

## 🧠 Contexto

Cada realm en Keycloak es completamente independiente:

* Usuarios aislados
* Roles aislados
* Clientes aislados
* Configuración aislada
* Claves de firma propias

Esto permite escenarios multi-tenant.

---

## ➕ Crear el nuevo Realm

1. En la esquina superior izquierda, abre el selector de realm.

2. Pulsa **Create Realm**.

3. Introduce el nombre:

   partner

4. Pulsa **Create**.

---

## 📍 Verificar el cambio

Confirma que ahora el selector superior muestra:

```
partner
```

---

## 🔎 Comprobar aislamiento

Ir a:

* **Users**
* **Clients**
* **Realm roles**

Verás que:

* No existe `user1`.
* No existe `spa-client`.
* No existen los roles creados en `training`.

---

## 🧠 Qué estamos comprobando

* Los realms son espacios completamente independientes.
* No comparten usuarios ni roles.
* Cada realm tiene su propio issuer y configuración OIDC.

En el siguiente paso configuraremos un cliente en el nuevo realm para validar el aislamiento.
