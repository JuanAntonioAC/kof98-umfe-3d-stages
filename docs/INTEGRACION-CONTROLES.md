# Integración con KofVsSelector / BGM

## Cadena de carga (PC y Steam Deck)

```
Juego (KingOfFighters98UM_x64.exe)
  ├─ importa dinput8.dll     → nuestro proxy
  └─ importa XINPUT1_4.dll   → nuestro proxy (crítico en Proton)
        │
        └─ modload_selector()
              ├─ KofVsSelector.dll   (lados + layouts)
              ├─ Kof98Bgm.dll        (opcional)
              └─ kom_module.dll      (King of Moves 3D)
```

Cambio en `KOF-VS-Controller-Selector\src\native\modload.c`:
carga `kom_module.dll` si existe. Si no está, el selector funciona igual que antes.

## Qué no se toca

- Layouts A/B/C/D, Start, direcciones, pantallas 1P/2P
- `kofvs.ini` / `kofvs-layouts.ini`
- Lógica de combate / hitboxes / rollback
- EXE del juego (no se reemplaza)

## Orden de instalación recomendado

1. Tener el selector compilado (`build_native.bat`).
2. Tener ISO PS2.
3. `tools\install-stages.ps1 -IsoPath ...` (opcional `-StagesOnly`).
4. Jugar y comprobar:
   - Pantalla de controles en VS / 1P
   - GRAPHIC SETTING → BACKGROUND 3D
   - Escenario 3D en Practice

## Si KoM pisa dinput8 otra vez

Tras un Update de `kom-setup`, vuelve a ejecutar el paso de encadenado
(o reinstala con `install-stages.ps1`). El script renombra el dinput8 de KoM
a `kom_module.dll` y restaura el del selector.
