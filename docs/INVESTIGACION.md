# Investigación técnica — escenarios 3D KOF '98 UMFE

## 1. King of Moves: Restoration 1.10.2

| Campo | Valor |
|---|---|
| Autor | Brigon (brigon.dev) |
| Versión | **1.10.2** (build 452), 16 nov 2026 |
| Página | https://brigon.dev/es/projects/king-of-moves-restoration/ |
| Descargas | https://downloads.brigon.dev/kom/releases/v1.10.2/ |
| Código fuente | **No publicado** (binarios + instalador) |
| Precio | Gratis (Patreon opcional) |
| Redistribución de assets SNK | **No** — lee tu ISO / tu juego |

### SHA-256 verificados en este equipo

```
1f34c42cfcac883abc0d149cf5cfff8f1d7ef143f006ebd4417f591d918e6c5a  kom-setup-1.10.2-windows-x86_64.zip
b61266857fb760a9e46b4f791e50297df1465c235a394266d6876f78964c1da4  dinput8-1.10.2.zip
525fa22f10cc757a5d919aa5da560e3a2e1639f489aa512bc0430ee00807c7fa  dinput8.dll (módulo in-game x64)
```

### Cómo funciona la restauración 3D

1. El módulo se inyecta como proxy **`dinput8.dll`** (exporta `DirectInput8Create`, etc.).
2. El instalador (`kom-setup`) copia datos de escenarios desde la ISO PS2
   (busca `DATA/BG_BIN` en el disco) hacia la carpeta del juego Steam.
3. Parchea menús/UI para exponer **GRAPHIC SETTING → BACKGROUND → 2D / 3D**.
4. En pelea, renderiza geometría 3D PS2 detrás/delante de los sprites 2D
   (público, vehículos, agua, luces, foreground), no fotos ni vídeo estático.
5. Preferencias en `kom_settings.ini` (persisten entre sesiones).

### Funciones del instalador relevantes

```
kom-setup --install GAME_DIR ISO     # '98 exige ISO
kom-setup --uninstall GAME_DIR [3d] [background] ...
kom-setup --add GAME_DIR background  # add-ons
kom-setup --identify GAME_DIR
kom-setup --version                  # 1.10.2 (build 452)
```

**Nota:** `--bridge` **no** es para encadenar otros mods; es el helper de input
fuera de foco en Linux (`kom_bridge.bin`).

### Solo escenarios 3D (sin extras)

En la GUI se pueden desmarcar Colour Edit, Gallery, move lists, hitboxes, etc.
Por CLI, tras instalar con ISO, se puede `--uninstall GAME_DIR` selectivo de
features no deseadas (`colour`, `gallery`, `moves`, `hitboxes`, `song`, …)
conservando `3d` / `background`.

El instalador GUI es la vía más segura para marcar **solo stages**.

## 2. Diferencias PS2 vs Steam (PC)

| Aspecto | PS2 UM | Steam UMFE |
|---|---|---|
| Personajes | Sprites 2D | Sprites 2D (misma base) |
| Escenarios | 3D + capas | Fondos 2D (`.grc` en `Data/game/bg`, `bgum`) |
| Motor UI | Consola | XUI / Direct3D9 PC |
| Netcode | — | Rollback Steam (no tocar) |
| Datos 3D | `DATA/BG_BIN` en disco | Casi ausentes (solo stubs en `bg_bin`) |

En la instalación local, `Data/game/bg_bin` solo tiene 3 archivos de prueba
(`20_01.grc`, `20_02.grc`, `test.bin`). Los escenarios 3D completos **no** están
en Steam; hay que importarlos desde la ISO.

El EXE Steam x64 ya importa `Direct3DCreate9` y helpers D3DX de matriz/vector:
el motor PC puede dibujar 3D; faltaba el camino de datos/código de escenarios
que KoM reactiva.

## 3. Instalación Steam inspeccionada

| Campo | Valor |
|---|---|
| Ruta | `D:\SteamLibrary\steamapps\common\The King of Fighters'98 Ultimate Match` |
| Junction (CLI KoM) | `D:\SteamLibrary\steamapps\common\KOF98UMFE` |
| AppID | `222420` |
| BuildID | `8170224` |
| EXE x64 | `KingOfFighters98UM_x64.exe` |
| PE Timestamp | `0x62033053` |
| SizeOfImage | `0x1B31000` |
| SHA256 x64 | `575BC3343824A7DBFD9D10C87D4FB58906926C8D512E329D8A3E2BD0447D4F6A` |
| Estado carpeta | Vanilla (sin dinput8 de mods al inicio) |

Coincide con la versión esperada por `KofVsSelector`.

**Importante:** el apóstrofe en `Fighters'98` rompe el parser CLI de `kom-setup`.
Usar siempre el junction `KOF98UMFE` o la GUI.

## 4. Conflicto con tus mods actuales

| Mod | Mecanismo |
|---|---|
| KofVsSelector | `dinput8.dll` + `xinput1_4.dll` → `LoadLibrary(KofVsSelector.dll)` |
| Kof98Bgm | Cargado por el mismo loader |
| King of Moves | También quiere ser `dinput8.dll` |

### Solución adoptada

1. KoM se instala con `kom-setup` (parchea UI + importa assets).
2. Su `dinput8.dll` se renombra a **`kom_module.dll`**.
3. Se restaura el `dinput8.dll` / `xinput1_4.dll` del selector.
4. `modload.c` del selector ahora hace `LoadLibrary(kom_module.dll)`.

Así el juego sigue usando tu proxy de DirectInput/XInput, y KoM inicializa
hooks desde `DllMain` al ser cargado.

## 5. Online

README KoM: lobbies Steam usan comportamiento stock (2D). Compatible entre
jugadores con/sin mod. Fallback seguro documentado; no se toca rollback.

## 6. Steam Deck / Proton

KoM se prueba principalmente en Linux/Steam Deck.

Launch options combinadas (selector + KoM):

```
WINEDLLOVERRIDES="dinput8=n,b;xinput1_4=n,b" %command%
```

Ver `steamdeck/LEEME.md`.

## 7. Qué falta para cerrar la implementación

1. **ISO PS2 de KOF '98 Ultimate Match** proporcionada por ti.
2. Ejecutar `tools/install-stages.ps1 -IsoPath ...`
3. Pruebas reales: Practice, Versus, rounds, supers, controles 1P/2P, toggle 2D/3D.
4. Después: validación Steam Deck.
