# Lab 01 — Crear la aplicación Angular

## Paso 02 — Preparar estructura base de la aplicación

---

## 🎯 Objetivo

Limpiar la aplicación generada y dejar una estructura mínima preparada para integrar autenticación.

---

## 📍 Ubicación

Dentro de:

```
apps/angular-app/angular-app
```

---

## 🧹 Limpiar el template inicial

Abre:

```
src/app/app.component.html
```

Reemplaza todo el contenido por:

```html
<h1>Keycloak Training App</h1>

<nav>
  <a routerLink="/">Home</a>
  <a routerLink="/protected">Protected</a>
</nav>

<hr>

<router-outlet></router-outlet>
```

---

## 🧱 Crear componente Home

Ejecuta:

```bash
npx ng generate component home --standalone
```

Editar:

```
src/app/home/home.component.ts
```

Contenido mínimo:

```typescript
import { Component } from '@angular/core';

@Component({
  selector: 'app-home',
  standalone: true,
  template: `<p>Home works</p>`
})
export class HomeComponent {}
```

---

## 🔒 Crear componente Protected

Ejecuta:

```bash
npx ng generate component protected --standalone
```

Editar:

```
src/app/protected/protected.component.ts
```

Contenido mínimo:

```typescript
import { Component } from '@angular/core';

@Component({
  selector: 'app-protected',
  standalone: true,
  template: `<p>Protected works</p>`
})
export class ProtectedComponent {}
```

---

## 🗺 Configurar rutas

Editar:

```
src/app/app.routes.ts
```

Contenido:

```typescript
import { Routes } from '@angular/router';
import { HomeComponent } from './home/home.component';
import { ProtectedComponent } from './protected/protected.component';

export const routes: Routes = [
  { path: '', component: HomeComponent },
  { path: 'protected', component: ProtectedComponent }
];
```

---

## ✅ Verificación

* La aplicación sigue arrancando.
* Se puede navegar entre `/` y `/protected`.
* Aún no hay autenticación.
* La estructura está lista para integrar Keycloak en los siguientes pasos.
