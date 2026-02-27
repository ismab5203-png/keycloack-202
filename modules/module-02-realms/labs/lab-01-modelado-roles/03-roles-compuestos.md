# Lab 01 — Modelado de Roles

## Paso 03 — Asignar Roles al Usuario

---

## 🎯 Objetivo

Asignar los roles creados al usuario `user1` y validar cómo se reflejan en el token.

---

## 📍 Acceder al usuario

1. Ir a **Users**.
2. Seleccionar:

   user1

---

## ➕ Asignar Realm Role

1. Ir a la pestaña **Role mapping**.

2. En el desplegable superior, seleccionar **Filter by realm roles**.

3. Seleccionar el rol:

   user

4. Pulsar **Assign**.

---

## ➕ Asignar Client Role

1. En la misma pestaña **Role mapping**, cambiar el filtro a:

   Filter by clients

2. Seleccionar el cliente:

   spa-client

3. Seleccionar el rol:

   reader

4. Pulsar **Assign**.

---

## 🔁 Obtener un nuevo token

Repite el flujo Authorization Code (Lab 04) para obtener un nuevo `access_token`.

---

## 🔎 Verificar en el token

Decodifica el nuevo token y comprueba:

En `realm_access` debe aparecer:

```
"roles": ["user", ...]
```

En `resource_access` debe aparecer:

```
"spa-client": {
  "roles": ["reader"]
}
```

---

## 🧠 Qué estamos validando

* Los roles asignados se incluyen en el JWT.
* Realm roles y client roles se representan en secciones distintas.
* La autorización puede basarse en el contenido del token.
