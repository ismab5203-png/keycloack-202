# Lab 02 — Crear el primer Realm

## Paso 02 — Crear un usuario en el realm `training`

---

## 🎯 Objetivo

Crear el primer usuario dentro del realm `training` para poder realizar pruebas de autenticación.

---

## 📍 Verificar el realm activo

Asegúrate de que en la parte superior izquierda aparece seleccionado el realm:

```
training
```

Si no es así, cámbialo desde el selector.

---

## ➕ Crear el usuario

1. En el menú lateral, haz clic en **Users**.

2. Pulsa **Create user**.

3. Completa los siguientes campos:

   Username: user1

4. Pulsa **Create**.

---

## 🔑 Configurar contraseña

1. Dentro del usuario recién creado, ve a la pestaña **Credentials**.

2. Pulsa **Set password**.

3. Introduce:

   Password: password
   Confirm password: password

4. Desactiva la opción **Temporary**.

5. Pulsa **Save**.

6. Confirma la acción.

---

## ✅ Verificación

El usuario `user1` debe:

* Aparecer en la lista de usuarios.
* Tener una contraseña configurada.
* No requerir cambio de contraseña en el primer login.

Este usuario será utilizado en los siguientes laboratorios para probar flujos de autenticación.
