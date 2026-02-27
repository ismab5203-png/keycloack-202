# Lab 01 — Levantar Keycloak en modo desarrollo
## Paso 01 — Crear la base del docker-compose

🎯 Objetivo de este paso

Preparar la estructura mínima del docker-compose.yml que iremos construyendo progresivamente durante el curso.

En este punto no vamos a definir todavía el servicio de Keycloak.
Primero entendemos la estructura.

---

🧠 ¿Por qué no damos el docker-compose hecho?

Porque parte del aprendizaje real es entender:

- Qué es un servicio
- Cómo se definen redes
- Cómo se gestionan variables
- Cómo se construye un entorno progresivamente

Durante el curso iremos ampliando este archivo módulo a módulo.

---

📁 Ubicación del archivo

El archivo está en:

infra/docker-compose.yml

Si no existiera, lo crearíamos con:

touch infra/docker-compose.yml

---

✍️ Definir la estructura mínima

Edita el archivo:

infra/docker-compose.yml

Y añade el siguiente contenido base:

version: "3.9"

services:

---

🔎 ¿Qué significa esto?

version: "3.9"

Define la versión del esquema de Docker Compose que vamos a usar.
No es la versión de Docker.
Es la versión del formato del archivo.

services:

Aquí se definirán todos los contenedores de nuestro ecosistema:

- keycloak
- angular-app
- api-node
- postgres
- ldap
- nginx

Pero los iremos añadiendo progresivamente.

---

✅ Resultado esperado

Tu archivo infra/docker-compose.yml debería verse así:

version: "3.9"

services:

Nada más por ahora.

En el siguiente paso añadiremos el primer servicio: Keycloak en modo desarrollo.

