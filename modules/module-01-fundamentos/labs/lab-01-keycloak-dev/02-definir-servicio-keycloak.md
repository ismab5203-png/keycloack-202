# Lab 01 — Levantar Keycloak en modo desarrollo

## Paso 02 — Definir el servicio Keycloak

---

## 🎯 Objetivo

Añadir el primer servicio real a nuestro `docker-compose.yml`:
Keycloak ejecutándose en modo desarrollo.

---

## 📁 Editar el archivo

Abre:

```
infra/docker-compose.yml
```

Actualmente debería contener:

```yaml
version: "3.9"

services:
```

---

## ✍️ Añadir el servicio Keycloak

El archivo completo debe quedar así:

```yaml
version: "3.9"

services:
  keycloak:
    image: quay.io/keycloak/keycloak:latest
    command: start-dev
    ports:
      - "8080:8080"
    environment:
      KEYCLOAK_ADMIN: admin
      KEYCLOAK_ADMIN_PASSWORD: admin
```

---

## 🔎 Explicación

**image**
Imagen oficial de Keycloak.

**command: start-dev**
Arranca Keycloak en modo desarrollo:

* Base de datos embebida
* Configuración no productiva
* Ideal para laboratorio

**ports**
Expone el puerto 8080 al host del Codespace.

**environment**
Define el usuario administrador inicial.

⚠️ En producción nunca usaríamos `latest` ni credenciales hardcodeadas.
