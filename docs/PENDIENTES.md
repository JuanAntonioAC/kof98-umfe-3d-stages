# Problemas pendientes

## Bloqueante

1. **Falta la ISO PS2** de *The King of Fighters '98 Ultimate Match*.
   Sin ella `kom-setup --install` no puede importar `DATA/BG_BIN` ni completar
   los escenarios 3D. En este equipo no hay ninguna ISO KOF '98.

   Acción: Juan debe proporcionar la ruta a su ISO legítima.
   Luego: `.\tools\install-stages.ps1 -IsoPath "..." [-StagesOnly]`

## No bloqueantes / a validar tras instalar

2. Confirmar que `kom_module.dll` (LoadLibrary del dinput8 de KoM renombrado)
   inicializa todos los hooks igual que siendo el `dinput8.dll` primario.
3. Comprobar que un update de `kom-setup` no deja el dinput8 de KoM encima
   del proxy del selector (re-ejecutar install-stages o paso de chain).
4. Lista definitiva de escenarios 3D OK tras Practice/Versus (ver `ESCENARIOS.md`).
5. Validación Steam Deck (solo después de PC).

## Limitaciones conocidas de KoM (upstream)

- Online Steam: siempre 2D stock (intencional).
- Escenarios 3D en modos SCREEN 480: experimental (bandas negras).
- Módulo Windows menos testeado en hardware real que Linux/Deck (autor).
