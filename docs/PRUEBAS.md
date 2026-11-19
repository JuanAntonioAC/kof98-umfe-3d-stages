# Plan y resultados de pruebas

## Regla

No marcar una prueba como OK si no se ejecutó de verdad.

## Entorno

- PC Windows 10, Steam appid 222420, EXE x64 PE `0x62033053`
- Mods: KofVsSelector + Kof98Bgm + KoM 1.10.2 encadenado (`kom_module.dll`)
- ISO: `ps2-import\kof98um.iso` (SHA256 `FC20C8CB…86166A`)

## Matriz

| # | Prueba | Resultado | Notas |
|---|---|---|---|
| 1 | Inicio del juego | **OK** | Steam launch, pid 17320, Responding |
| 2 | Carga selector + KoM | **OK** | `kofvs-loader.log`: ambos loaded |
| 3 | stage3d activo | **OK** | 85 patch sites; pass 640x448 / 1536x801 |
| 4 | BACKGROUND default 3D | **OK** | `kom_settings.ini` → `background=3d` |
| 5 | Assets PS2 importados | **OK** | 63 escenas; `bg_bin` = 67 archivos |
| 6 | Overlay BGM selector | **OK** | SELECT MUSIC visible in-game |
| 7 | GRAPHIC SETTING menú | PARCIAL | Handlers instalados en log; falta captura menú |
| 8 | Practice pelea 3D visual | PENDIENTE usuario | Entra a Practice y confirma a ojo |
| 9 | Versus cambio escenario | PENDIENTE | |
| 10 | Controles 1P/2P layouts | PENDIENTE | Loader OK; falta flow completo |
| 11 | Toggle 2D sin reinstalar | PENDIENTE | |
| 12 | Online → 2D stock | DOCUMENTED | Upstream KoM |
| 13 | Steam Deck | PENDIENTE | Tras validar Practice en PC |

## Logs clave (2026-11-16)

```
loader: kom_module.dll loaded
loader: KofVsSelector.dll loaded
stage3d: applied 85 patch sites, enable 15
settings rows: BACKGROUND / BGM handlers installed
stage3d: 3D pass on a 640x448 render target
```
