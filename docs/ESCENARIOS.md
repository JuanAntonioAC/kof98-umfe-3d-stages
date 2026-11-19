# Lista de escenarios 3D

Nombres base del juego (STAGE SELECT / strings Steam):

| ID UI | Nombre |
|---|---|
| JPN-STREET | Japan Street |
| USA-YARD | USA Trainyard |
| CHINA | China |
| JPN-TEMPLE | Japan Temple |
| KOREA | Korea |
| USA-WHARF | USA Wharf |
| MID-EAST | Middle East |
| RUGAL | Rugal |
| SPAIN | Spain |

King of Moves restaura las versiones **3D PS2** de estos fondos (animación de
público, props, agua en Korea, etc., según escenario).

## Importación

- `kom-setup` copió **63 scene files** desde la ISO.
- `Data/game/bg_bin` pasó de ~3 stubs a **67 archivos** (`01_01.grc` …).

## Estado de verificación in-game

| Escenario | 3D OK | Notas |
|---|---|---|
| (sistema 3D) | OK en logs | `stage3d` pass activo, `background=3d` |
| Cada stage visual | PENDIENTE ojo | Confirmar en Practice uno por uno |

Tras instalar, rellenar esta tabla round a round. Prestár atención a:

- Korea (agua / ondas — mencionada en changelog KoM 1.8.0)
- Middle East (huecos transparentes corregidos en 1.8.0)
- USA Trainyard en Practice tras Restart (fix en 1.9.0)
- Cambios ambientales por round (comportamiento PS2)
