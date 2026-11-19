# Instalación y desinstalación

## Requisitos

1. KOF '98 UMFE Steam (x64) instalado.
2. Tu ISO PS2 de KOF '98 Ultimate Match.
3. Selector compilado en `D:\KOF-VS-Controller-Selector\dist`.
4. Paquete KoM 1.10.2 en `vendor\king-of-moves\1.10.2` (ya verificado).

## Instalar escenarios 3D + conservar controles

```powershell
cd D:\KOF98-UMFE-3D-Stages
.\tools\install-stages.ps1 -IsoPath "D:\ruta\KOF98UM.iso"
```

Solo escenarios (intenta quitar colour/gallery/moves/…):

```powershell
.\tools\install-stages.ps1 -IsoPath "D:\ruta\KOF98UM.iso" -StagesOnly
```

## En el juego

1. Help & Options → Settings → GRAPHIC SETTING.
2. **BACKGROUND → 3D** (por defecto tras instalar recursos; si no, elígelo).
3. Practice / Versus: elige escenario; debe verse en 3D.
4. Para volver a 2D: BACKGROUND → 2D (sin reinstalar).

## Desinstalar KoM

```powershell
.\tools\uninstall-stages.ps1
```

Quitar también el selector:

```powershell
.\tools\uninstall-stages.ps1 -RemoveSelector
```

O: Steam → Propiedades → Archivos instalados → Verificar integridad.

## Desinstalación parcial

El CLI de KoM permite:

```text
kom-setup --uninstall GAME_DIR 3d
kom-setup --uninstall GAME_DIR background
```

Usar junction `D:\SteamLibrary\steamapps\common\KOF98UMFE` como GAME_DIR.
