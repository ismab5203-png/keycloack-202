# Lab 01 — Modelado de Roles

## Paso 02 — Crear Client Roles

---

## 🎯 Objetivo

Crear **roles específicos de cliente** para el cliente `spa-client`.

---

## 🧠 Contexto

Los Client Roles:

* Pertenecen a un cliente concreto.
* Se incluyen en el token bajo `resource_access`.
* Permiten modelar permisos específicos de una aplicación.

---

## 📍 Acceder al cliente

1. Ir a **Clients**.
2. Seleccionar:

   spa-client

---

## ➕ Crear el primer Client Role

1. Ir a la pestaña **Roles**.

2. Pulsar **Create role**.

3. Introducir:

   Role name: reader

4. Pulsar **Save**.

---

## ➕ Crear un segundo Client Role

Repetir el proceso y crear:

```
Role name: writer
```

---

## ✅ Verificación

Dentro del cliente `spa-client`, en la sección **Roles**, deben aparecer:

* reader
* writer

---

## 🧠 Diferencia con Realm Roles

* Realm roles → aparecen en `realm_access`.
* Client roles → aparecen en `resource_access`.

En el siguiente paso asignaremos roles a un usuario.
