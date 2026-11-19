# KOF '98 UMFE — Restauración de escenarios 3D (PS2)

Proyecto de integración para **The King of Fighters '98 Ultimate Match Final Edition** (Steam, x64)
que restaura los escenarios 3D de PlayStation 2 **sin romper** el selector de controles
(`KofVsSelector`) ni el selector de BGM.

## Enfoque

No reinventamos el render 3D. Reutilizamos **King of Moves: Restoration 1.10.2** (Brigon),
que ya restaura escenarios 3D reales (público, vehículos, agua, iluminación, foreground)
y añade **GRAPHIC SETTING → BACKGROUND → 2D / 3D**.

Este repo:

1. Verifica e integra KoM 1.10.2 desde la fuente oficial.
2. Encadena KoM con tus mods de controles (`dinput8` / `xinput1_4` → `KofVsSelector`).
3. Documenta ISO PS2, instalación, desinstalación y Steam Deck.
4. Deja scripts listos para importar tu disco PS2 cuando lo proporciones.

## Estado actual (2026-11-16)

| Ítem | Estado |
|---|---|
| Investigación KoM 1.10.2 | Hecho |
| Descarga + SHA-256 verificados | Hecho |
| ISO PS2 importada | Hecho (`ps2-import/kof98um.iso`) |
| kom-setup install | Hecho (63 escenas 3D + menú BACKGROUND) |
| Cadena selector + KoM | Hecho (`kom_module.dll` + proxies) |
| Juego arranca con ambos mods | Hecho (logs OK, pass 3D activo) |
| Confirmación visual Practice | Pendiente (ábrelo tú y mira el fondo) |
| Steam Deck | Payload + guía en `steamdeck/` |

## Requisito indispensable

Para los escenarios 3D de **'98** hace falta **tu propia imagen de disco PS2**
(`.iso`) de *The King of Fighters '98 Ultimate Match* (USA / EUR / JP-KR).

King of Moves **no redistribuye** assets de SNK: el instalador los lee de tu ISO.

En este PC **no se encontró** ninguna ISO de KOF '98 PS2.

Cuando la tengas:

```powershell
.\tools\install-stages.ps1 -IsoPath "D:\ruta\a\tu\KOF98UM.iso"
```

## Estructura

```
docs/           investigación, compatibilidad, pruebas
tools/          backup, install, uninstall, verify
vendor/         King of Moves 1.10.2 (oficial, verificado)
backups/        copias del juego antes de instalar
steamdeck/      notas Proton / WINEDLLOVERRIDES
ps2-import/     carpeta prevista para tu ISO (no versionar ISOs)
dist/           paquete de despliegue del chain-loader
```

## Mods que se conservan

Desde `D:\KOF-VS-Controller-Selector\dist`:

- `KofVsSelector.dll` — selección de lado / layouts
- `Kof98Bgm.dll` — selector de música
- `dinput8.dll` / `xinput1_4.dll` — proxies (ahora también cargan KoM)
- `kofvs.ini`, layouts, assets `Select\`

King of Moves se instala como `kom_module.dll` (su `dinput8.dll` renombrado) para
que **no pise** el proxy del selector.

## Online

Según el README oficial de KoM: en lobbies Steam se usan escenarios 2D de stock.
Los jugadores con/sin mod pueden jugar juntos. Al salir del lobby vuelven tus opciones.

## Licencia / legal

- King of Moves: gratuito, cerrado; © Brigon / brigon.dev. No incluye datos del juego.
- Assets PS2 / Steam: © SNK. Solo desde copias que poseas.
- Este repo: scripts e integración propios; no redistribuye EXEs de KoM ni ISOs.
