# Lab 01 — Crear la aplicación Angular

## Paso 01 — Generar la estructura base del proyecto

---

## 🎯 Objetivo

Crear la aplicación Angular standalone que servirá como base evolutiva durante todo el módulo 3.

---

## 📍 Ubicación

Desde la raíz del repositorio:

```
apps/angular-app
```

---

## 🛠 Generar el proyecto

Ejecuta:

```bash
npx @angular/cli@latest new angular-app --standalone --routing --style=css
```

Selecciona:

* Add Angular routing → Yes
* Stylesheet format → CSS

---

## 📁 Estructura esperada

Después de la generación debe existir:

```
apps/angular-app/angular-app
```

Con archivos como:

* angular.json
* package.json
* src/
* tsconfig.json

---

## ▶️ Probar la aplicación

Entra en el directorio generado:

```
cd angular-app
```

Instala dependencias y arranca:

```bash
npm install
npm start
```

La aplicación debe estar disponible en:

```
http://localhost:4200
```

---

## ✅ Verificación

* Angular arranca sin errores.
* Se muestra la página inicial por defecto.
* El servidor de desarrollo escucha en el puerto 4200.

Esta aplicación será la base sobre la que integraremos autenticación con Keycloak en los siguientes pasos.
