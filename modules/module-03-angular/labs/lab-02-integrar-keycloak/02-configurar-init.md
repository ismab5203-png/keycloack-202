# Lab 02 — Integrar Keycloak

## Paso 02 — Configurar e integrar la inicialización

---

## 🎯 Objetivo

Configurar correctamente la inicialización de Keycloak y dejarla integrada en el arranque de la aplicación Angular.

---

## 📍 Ubicación

Dentro de:

```
apps/angular-app/angular-app/src/app
```

---

## 📁 Crear archivo de configuración

Crear:

```
keycloak.config.ts
```

Contenido:

```typescript
export const keycloakConfig = {
  url: 'http://localhost:8080',
  realm: 'training',
  clientId: 'spa-client'
};
```

---

## 📁 Crear servicio de integración

Crear:

```
keycloak.service.ts
```

Contenido:

```typescript
import Keycloak from 'keycloak-js';
import { keycloakConfig } from './keycloak.config';

let keycloak: Keycloak;

export function initializeKeycloak(): Promise<boolean> {
  keycloak = new Keycloak({
    url: keycloakConfig.url,
    realm: keycloakConfig.realm,
    clientId: keycloakConfig.clientId
  });

  return keycloak.init({
    onLoad: 'login-required',
    pkceMethod: 'S256',
    checkLoginIframe: false
  });
}

export function getKeycloakInstance(): Keycloak {
  return keycloak;
}
```

---

## 📍 Integrar en el arranque

Abrir:

```
src/main.ts
```

Reemplazar por:

```typescript
import { bootstrapApplication } from '@angular/platform-browser';
import { AppComponent } from './app/app.component';
import { initializeKeycloak } from './app/keycloak.service';

initializeKeycloak()
  .then(() => {
    bootstrapApplication(AppComponent)
      .catch(err => console.error(err));
  })
  .catch(err => console.error('Keycloak init failed', err));
```

---

## 🧠 Estado esperado tras este paso

* Keycloak está configurado con:

  * URL
  * Realm
  * Client ID
  * PKCE habilitado
* La aplicación no arranca hasta que Keycloak se inicializa.
* El login será obligatorio en el siguiente paso al validar el comportamiento.
