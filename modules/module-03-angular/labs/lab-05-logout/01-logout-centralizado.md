# Lab 05 — Logout

## Paso 01 — Implementar Logout Centralizado

---

## 🎯 Objetivo

Implementar un mecanismo de logout que cierre sesión tanto en la aplicación Angular como en Keycloak.

---

## 🧠 Contexto

Cuando se ejecuta:

```
keycloak.logout()
```

Ocurre:

* Se invalida la sesión en Keycloak.
* Se eliminan tokens en el navegador.
* Se redirige al endpoint de logout del realm.
* El usuario queda completamente desconectado.

---

## 📍 Modificar el componente principal

Abrir:

```
src/app/app.component.ts
```

Actualizar el componente para añadir botón de logout:

```typescript id="p7kl2q"
import { Component } from '@angular/core';
import { RouterOutlet } from '@angular/router';
import { getKeycloakInstance } from './keycloak.service';

@Component({
  selector: 'app-root',
  standalone: true,
  imports: [RouterOutlet],
  template: `
    <h1>Keycloak Training App</h1>

    <nav>
      <a routerLink="/">Home</a>
      <a routerLink="/protected">Protected</a>
      <button (click)="logout()">Logout</button>
    </nav>

    <hr>
    <router-outlet></router-outlet>
  `
})
export class AppComponent {

  logout() {
    const keycloak = getKeycloakInstance();
    keycloak.logout({
      redirectUri: window.location.origin
    });
  }
}
```

---

## ▶️ Reiniciar aplicación

```bash
npm start
```

---

## 🔎 Resultado esperado

* Aparece un botón **Logout**.
* Al pulsarlo:

  * Se redirige a Keycloak.
  * Se cierra la sesión.
  * Se vuelve a la aplicación sin estar autenticado.
  * Se fuerza nuevamente login al intentar acceder a rutas protegidas.

---

## 🧠 Qué estamos validando

* Cierre de sesión completo.
* Logout centralizado en el IdP.
* Eliminación efectiva de la sesión activa.
