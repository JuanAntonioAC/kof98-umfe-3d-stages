# Steam Deck — preparación (después de validar PC)

## Principio

Primero PC estable. Luego Deck. No sacrificar la build de Windows.

## Proton

King of Moves recomienda Proton Experimental (o Proton reciente) y:

```
WINEDLLOVERRIDES="dinput8=n,b" %command%
```

Con el selector de controles también hace falta `xinput1_4` (Proton a menudo
ignora `dinput8` del juego). Combinación:

```
WINEDLLOVERRIDES="dinput8=n,b;xinput1_4=n,b" %command%
```

## Archivos junto al EXE x64

Igual que en PC tras `install-stages.ps1`:

- `dinput8.dll`, `xinput1_4.dll` (proxies selector)
- `KofVsSelector.dll`, `kofvs.ini`, `Select\`
- `Kof98Bgm.dll` (si lo usas)
- `kom_module.dll` + datos/UI que dejó `kom-setup`
- `kom_settings.ini` (tras primera config)

## microSD

Si el juego está en tarjeta SD, la ruta de Steam sigue siendo válida para
`kom-setup` en el Deck (Linux). Usar el instalador Linux de KoM 1.10.2:

`vendor/king-of-moves/1.10.2` → descargar también el tar.gz Linux si instalas en Deck.

SHA oficial Linux ZIP:
`f59b791fe986ecdd54228a186109947003a287edb1d175685a6f711837dce7c8`

## Steam Input

Conservar tus configuraciones actuales del selector. KoM no debe reasignar
A/B/C/D; si el menú BACKGROUND consume inputs, probar con el mismo pad que
ya pasó por la pantalla SELECT YOUR CONTROLLER.

## Checklist Deck (cuando toque)

- [ ] Instalar/actualizar KoM con ISO en el Deck o copiar carpeta ya preparada desde PC
- [ ] Launch options con ambos overrides
- [ ] BACKGROUND 3D en Practice
- [ ] Selector de controles 1P/2P
- [ ] Rendimiento / sin stutter raro
- [ ] Online → sigue en 2D (esperado)
