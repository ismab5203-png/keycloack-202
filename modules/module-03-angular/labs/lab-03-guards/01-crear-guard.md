# Lab 03 — Guards

## Paso 01 — Crear el Auth Guard

---

## 🎯 Objetivo

Crear un **Route Guard** que permita proteger rutas en función del estado de autenticación del usuario.

---

## 📍 Ubicación

Desde:

```
apps/angular-app/angular-app
```

---

## 🛠 Generar el guard

Ejecuta:

```bash
npx ng generate guard auth --functional
```

Selecciona:

```
CanActivate
```

---

## 📁 Editar el archivo generado

Abrir:

```
src/app/auth.guard.ts
```

---

## ✍️ Implementar la lógica

Reemplazar el contenido por:

```typescript
import { CanActivateFn } from '@angular/router';
import { getKeycloakInstance } from '../keycloak.service';

export const authGuard: CanActivateFn = () => {
  const keycloak = getKeycloakInstance();

  if (keycloak?.authenticated) {
    return true;
  }

  keycloak.login();
  return false;
};
```

---

## 🧠 Qué hace este guard

* Verifica si el usuario está autenticado.
* Si no lo está, redirige al login.
* Permite acceso solo si existe sesión válida.
* Se utilizará en el siguiente paso para proteger rutas específicas.
