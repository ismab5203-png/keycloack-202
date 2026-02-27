# Lab 03 — Guards

## Paso 02 — Proteger rutas con el Auth Guard

---

## 🎯 Objetivo

Aplicar el `authGuard` a la ruta `/protected` para impedir el acceso sin autenticación.

---

## 📍 Editar archivo de rutas

Abrir:

```
src/app/app.routes.ts
```

---

## ✍️ Modificar configuración de rutas

Actualizar el contenido a:

```typescript
import { Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { ProtectedComponent } from './protected/protected.component';
import { authGuard } from './auth.guard';

export const routes: Routes = [
  { path: '', component: HomeComponent },
  { path: 'protected', component: ProtectedComponent, canActivate: [authGuard] }
];
```

---

## 🔎 Qué estamos haciendo

* Importamos el `authGuard`.
* Añadimos `canActivate` a la ruta `/protected`.
* Angular ejecutará el guard antes de permitir acceso a esa ruta.

---

## ▶️ Reiniciar aplicación

Si es necesario:

```bash
npm start
```

---

## 🧠 Estado actual

* La ruta `/protected` está protegida.
* El guard verificará si el usuario está autenticado.
* En el siguiente paso validaremos el comportamiento de redirección.
