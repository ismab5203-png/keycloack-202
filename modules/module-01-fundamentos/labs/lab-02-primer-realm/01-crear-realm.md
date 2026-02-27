# Lab 02 — Crear el primer Realm

## Paso 01 — Crear un nuevo Realm

---

## 🎯 Objetivo

Crear un nuevo realm independiente del realm `master` para empezar a trabajar en un entorno aislado.

---

## 🧠 Contexto

En Keycloak:

* Un **realm** es un espacio aislado.
* Cada realm tiene:

  * Usuarios propios
  * Clientes propios
  * Roles propios
  * Configuración propia

Nunca trabajaremos sobre `master` para aplicaciones reales.

---

## 🌐 Acceder a la consola

Ir a:

```
http://localhost:8080/admin
```

Iniciar sesión con:

* Usuario: admin
* Contraseña: admin

---

## ➕ Crear el nuevo Realm

1. En la esquina superior izquierda, haz clic en el selector de realm (donde aparece `master`).

2. Pulsa **Create Realm**.

3. Introduce el nombre:

   training

4. Pulsa **Create**.

---

## ✅ Verificación

Si todo ha ido correctamente:

* El selector superior debe mostrar ahora `training`.
* Estás trabajando dentro del nuevo realm.
* El realm `master` sigue existiendo, pero ya no estamos usándolo.

---

A partir de ahora, todos los elementos que creemos (usuarios, clientes, roles) pertenecerán al realm `training`.
