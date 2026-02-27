# Lab 05 — Logout

## Paso 02 — Validar el estado de sesión

---

## 🎯 Objetivo

Verificar que el logout realmente invalida la sesión y que la aplicación detecta correctamente el estado autenticado / no autenticado.

---

## 🧪 Escenario 1 — Sesión activa

1. Inicia sesión normalmente.
2. Accede a:

   [http://localhost:4200/protected](http://localhost:4200/protected)

Resultado esperado:

* Se muestra la vista protegida.
* `keycloak.authenticated` es `true`.

Puedes verificar añadiendo temporalmente en `ProtectedComponent`:

```typescript
console.log(getKeycloakInstance().authenticated);
```

---

## 🧪 Escenario 2 — Ejecutar logout

1. Pulsar botón **Logout**.
2. Observar la redirección.

Resultado esperado:

* Redirección al endpoint de logout del realm.
* Eliminación de tokens.
* Regreso a la aplicación.

---

## 🧪 Escenario 3 — Intentar acceder sin sesión

Tras logout:

1. Ir manualmente a:

   [http://localhost:4200/protected](http://localhost:4200/protected)

Resultado esperado:

* El guard detecta que no hay sesión.
* Se ejecuta `keycloak.login()`.
* Se redirige nuevamente al login.

---

## 🔎 Validación técnica

En DevTools → Application → Storage:

* No deben existir tokens activos.
* No debe existir sesión válida.

En consola:

```typescript
getKeycloakInstance().authenticated
```

Debe devolver:

```
false
```

---

## 🧠 Qué estamos confirmando

* El logout invalida la sesión en Keycloak.
* Los tokens se eliminan del navegador.
* Las rutas protegidas vuelven a requerir autenticación.
* La sesión está completamente gestionada desde el IdP.
