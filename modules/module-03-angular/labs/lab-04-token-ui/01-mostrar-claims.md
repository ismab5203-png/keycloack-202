# Lab 04 — Token UI

## Paso 01 — Mostrar los Claims del Token en la UI

---

## 🎯 Objetivo

Mostrar en la interfaz Angular la información contenida en el `access_token` para visualizar los claims del usuario autenticado.

---

## 📍 Ubicación

Dentro de:

```
apps/angular-app/angular-app
```

---

## ✍️ Modificar componente Protected

Abrir:

```
src/app/protected/protected.component.ts
```

Reemplazar el contenido por:

```typescript
import { Component, OnInit } from '@angular/core';
import { getKeycloakInstance } from '../keycloak.service';

@Component({
  selector: 'app-protected',
  standalone: true,
  template: `
    <h2>Protected Area</h2>

    <div *ngIf="tokenParsed">
      <h3>Token Claims</h3>
      <pre>{{ tokenParsed | json }}</pre>
    </div>
  `
})
export class ProtectedComponent implements OnInit {

  tokenParsed: any;

  ngOnInit(): void {
    const keycloak = getKeycloakInstance();
    this.tokenParsed = keycloak.tokenParsed;
  }
}
```

---

## ▶️ Reiniciar aplicación

```bash
npm start
```

---

## 🌐 Validar

1. Accede a:

   [http://localhost:4200/protected](http://localhost:4200/protected)

2. Tras autenticación, debería mostrarse:

* El título **Protected Area**
* Un bloque JSON con los claims del token

---

## 🔎 Qué estamos viendo

El objeto mostrado corresponde a:

* preferred_username
* realm_access
* resource_access
* exp
* iat
* iss
* aud

---

## 🧠 Qué estamos validando

* Angular puede acceder al token actual.
* Los claims del JWT están disponibles en cliente.
* La autorización puede basarse en el contenido del token.
