# Lab 03 — Client Credentials Flow

## Paso 01 — Crear un cliente confidencial con Service Account

---

## 🎯 Objetivo

Crear un cliente confidencial que utilice **Client Credentials Flow** para autenticación máquina a máquina.

---

## 🧠 Contexto

El Client Credentials Flow se utiliza cuando:

* No hay usuario interactivo.
* Un servicio backend necesita autenticarse contra otro servicio.
* Se emplea una **Service Account** en lugar de un usuario humano.

---

## ➕ Crear el cliente

1. Ir a **Clients**.

2. Pulsar **Create client**.

3. Configurar:

   Client type: OpenID Connect
   Client ID: backend-client

4. Pulsar **Next**.

---

## ⚙️ Configuración del cliente

En la siguiente pantalla:

* Client authentication: ON
* Authorization: OFF
* Standard flow: OFF
* Direct access grants: OFF
* Service accounts roles: ON

Pulsa **Next**.

---

## 💾 Guardar configuración

Revisa la configuración y pulsa **Save**.

---

## 🔑 Obtener el Client Secret

1. Dentro del cliente `backend-client`, ir a la pestaña **Credentials**.
2. Copiar el valor de:

   Client secret

Este valor será necesario para solicitar el token.

---

## ✅ Verificación

El cliente `backend-client` debe:

* Ser confidencial.
* Tener activada la Service Account.
* Disponer de un Client Secret válido.

En el siguiente paso solicitaremos un token usando Client Credentials.
