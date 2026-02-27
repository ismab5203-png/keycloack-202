# Lab 04 — Token UI

## Paso 02 — Simular la expiración del Token

---

## 🎯 Objetivo

Observar el comportamiento de la aplicación cuando el `access_token` expira.

---

## 🧠 Contexto

Los tokens tienen un tiempo de vida limitado definido en Keycloak.

Por defecto suelen expirar en pocos minutos.

Cuando el token expira:

* `keycloak.authenticated` puede seguir siendo true.
* El `access_token` deja de ser válido.
* Será necesario usar el `refresh_token`.

---

## 📍 Mostrar tiempo restante del token

Editar:

```
src/app/protected/protected.component.ts
```

Añadir dentro del template:

```html
<p>Token expires at: {{ tokenParsed?.exp * 1000 | date:'medium' }}</p>
```

Y dentro del componente mantener:

```typescript
this.tokenParsed = keycloak.tokenParsed;
```

---

## 🧪 Reducir tiempo de expiración (opcional)

En Keycloak:

1. Ir a **Realm settings**.
2. Ir a **Tokens**.
3. Reducir:

   Access Token Lifespan → 1 minute

Guardar cambios.

---

## ▶️ Probar expiración

1. Inicia sesión.
2. Accede a `/protected`.
3. Espera hasta que pase el tiempo configurado.
4. Intenta navegar o refrescar la página.

---

## 🔎 Comportamiento esperado

* El token expirará.
* Si se refresca la página, puede forzarse nuevo login.
* Aún no hay lógica automática de refresh.

---

## 🧠 Qué estamos validando

* Los tokens tienen vida limitada.
* La expiración impacta en la sesión.
* Es necesario implementar mecanismo de refresh automático en el siguiente paso.
