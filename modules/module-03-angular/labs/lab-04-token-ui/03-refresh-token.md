# Lab 04 — Token UI

## Paso 03 — Implementar Refresh Automático del Token

---

## 🎯 Objetivo

Configurar la aplicación para renovar automáticamente el `access_token` antes de que expire.

---

## 🧠 Contexto

Keycloak proporciona un `refresh_token` que permite:

* Obtener un nuevo `access_token`
* Mantener la sesión sin obligar al usuario a relogin
* Evitar errores cuando el token expira

La librería `keycloak-js` permite actualizar el token con:

```
keycloak.updateToken(minValidity)
```

---

## 📍 Modificar el servicio de Keycloak

Abrir:

```
src/app/keycloak.service.ts
```

Actualizar la función `initializeKeycloak` para añadir un refresco periódico:

```typescript id="l5o8b2"
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
  }).then(authenticated => {

    if (authenticated) {
      setInterval(() => {
        keycloak.updateToken(30)
          .then(refreshed => {
            if (refreshed) {
              console.log('Token refreshed');
            }
          })
          .catch(() => {
            console.error('Failed to refresh token');
          });
      }, 10000);
    }

    return authenticated;
  });
}
```

---

## ▶️ Reiniciar aplicación

```bash
npm start
```

---

## 🧪 Probar comportamiento

1. Acceder a `/protected`
2. Esperar a que el token esté próximo a expirar
3. Observar la consola del navegador

---

## 🔎 Comportamiento esperado

* El token se renueva automáticamente.
* No se fuerza relogin.
* La sesión se mantiene activa.
* En consola debe aparecer:

  Token refreshed

---

## 🧠 Qué estamos validando

* Uso correcto del `refresh_token`.
* Renovación silenciosa de sesión.
* Gestión básica del ciclo de vida del token en SPA.
