# Lab 02 — Proteger Rutas con Guards

## Paso 01 — Crear un Auth Guard

---

## 🎯 Objetivo

Crear un **Route Guard** que permita proteger rutas en función del estado de autenticación.

---

## 📍 Crear el guard

Desde:

```
apps/angular-app/angular-app
```

Ejecuta:

```bash
npx ng generate guard auth
```

Selecciona la opción:

```
CanActivate
```

---

## 📁 Editar el archivo generado

Abre:

```
src/app/auth.guard.ts
```

---

## ✍️ Implementar la lógica

Reemplaza el contenido por el siguiente:

```typescript
import { CanActivateFn } from '@angular/router';
import { getKeycloakInstance } from './keycloak.service';

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
* Impide el acceso a la ruta protegida.
* Permite el acceso si el token es válido.

En el siguiente paso aplicaremos este guard a una ruta concreta.
