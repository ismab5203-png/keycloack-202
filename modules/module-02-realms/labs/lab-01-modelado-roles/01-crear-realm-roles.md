# Lab 01 — Modelado de Roles

## Paso 01 — Crear Realm Roles

---

## 🎯 Objetivo

Crear los primeros **realm roles** dentro del realm `training` para comenzar a modelar autorización.

---

## 🧠 Contexto

En Keycloak existen dos tipos principales de roles:

* Realm Roles → aplican a todo el realm.
* Client Roles → aplican a un cliente específico.

En este paso trabajaremos con **Realm Roles**.

---

## 📍 Verificar el realm activo

Asegúrate de que estás en el realm:

```
training
```

---

## ➕ Crear el primer Realm Role

1. En el menú lateral, haz clic en **Realm roles**.

2. Pulsa **Create role**.

3. Introduce:

   Role name: user

4. Pulsa **Save**.

---

## ➕ Crear un segundo Realm Role

Repite el proceso y crea:

```
Role name: admin
```

---

## ✅ Verificación

En la lista de Realm Roles deben aparecer al menos:

* user
* admin

---

## 🧠 Qué hemos hecho

* Hemos definido roles a nivel global del realm.
* Estos roles podrán asignarse a usuarios o grupos.
* Estos roles aparecerán posteriormente dentro del token JWT.

En el siguiente paso trabajaremos con Client Roles.
