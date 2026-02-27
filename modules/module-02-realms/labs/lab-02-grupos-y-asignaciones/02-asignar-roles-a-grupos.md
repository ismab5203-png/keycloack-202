# Lab 02 — Grupos y Asignaciones

## Paso 02 — Asignar Roles a un Grupo

---

## 🎯 Objetivo

Asignar roles al grupo `employees` para que los usuarios hereden automáticamente esos permisos.

---

## 📍 Acceder al grupo

1. Ir a **Groups**.
2. Seleccionar:

   employees

---

## ➕ Asignar Realm Role al Grupo

1. Ir a la pestaña **Role mapping**.

2. En el filtro seleccionar **Filter by realm roles**.

3. Seleccionar el rol:

   user

4. Pulsar **Assign**.

---

## ➕ Asignar Client Role al Grupo

1. En la misma pestaña **Role mapping**, cambiar el filtro a:

   Filter by clients

2. Seleccionar el cliente:

   spa-client

3. Seleccionar el rol:

   reader

4. Pulsar **Assign**.

---

## 👤 Añadir el usuario al grupo

1. Ir a **Users**.

2. Seleccionar:

   user1

3. Ir a la pestaña **Groups**.

4. Pulsar **Join Group**.

5. Seleccionar:

   employees

6. Confirmar la asignación.

---

## ✅ Verificación

El usuario `user1` ahora:

* Pertenece al grupo `employees`.
* Hereda los roles asignados al grupo.
* No necesita tener los roles asignados manualmente.
