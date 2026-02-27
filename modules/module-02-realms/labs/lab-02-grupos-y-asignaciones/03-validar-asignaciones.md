# Lab 02 — Grupos y Asignaciones

## Paso 03 — Validar la asignación mediante Grupos

---

## 🎯 Objetivo

Comprobar que los roles asignados a un grupo se reflejan correctamente en el token del usuario miembro del grupo.

---

## 📍 Verificar pertenencia al grupo

1. Ir a **Users**.

2. Seleccionar:

   user1

3. Ir a la pestaña **Groups**.

4. Confirmar que el usuario pertenece al grupo correspondiente (por ejemplo: `employees`).

---

## 🔁 Obtener un nuevo token

Repite el flujo Authorization Code (Lab 04) para generar un nuevo `access_token`.

---

## 🔎 Decodificar el token

Analiza el token en jwt.io o la herramienta utilizada anteriormente.

---

## 📋 Verificar los roles heredados

En el payload del token comprueba:

* En `realm_access.roles` deben aparecer los roles asignados al grupo.
* En `resource_access.spa-client.roles` deben aparecer los roles del cliente asignados al grupo.

---

## 🧠 Qué estamos validando

* Los roles asignados a nivel de grupo se heredan por los usuarios.
* No es necesario asignar roles manualmente a cada usuario.
* La autorización puede modelarse de forma escalable mediante grupos.

Los grupos simplifican la gestión cuando el número de usuarios crece.
