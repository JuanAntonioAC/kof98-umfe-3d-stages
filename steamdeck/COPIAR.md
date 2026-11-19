# Pasar el mod al Steam Deck

## Opción A — Copiar la instalación ya lista (rápida)

1. En PC, copia toda la carpeta del juego Steam ya moddeada
   (`The King of Fighters'98 Ultimate Match`) al Deck (microSD o SSD interno),
   o sincroniza con el mismo library folder.
2. En Steam Deck → Propiedades del juego → Opciones de lanzamiento:

```
WINEDLLOVERRIDES="dinput8=n,b;xinput1_4=n,b" %command%
```

3. Proton Experimental recomendado.
4. Arranca y verifica GRAPHIC SETTING → BACKGROUND = 3D.

Los DLLs mínimos también están en `steamdeck/payload/` (proxies + selector + `kom_module.dll` + settings).
**No bastan solos**: hacen falta también los datos 3D en `Data/game/bg_bin` y los parches UI que dejó `kom-setup`.

## Opción B — Instalar KoM nativo en el Deck

1. Copia tu ISO al Deck.
2. Descarga el setup Linux de KoM 1.10.2.
3. `./kom-setup` → Install con la ISO.
4. Renombra `dinput8.dll` de KoM a `kom_module.dll`.
5. Copia encima los archivos de `steamdeck/payload/` (proxies del selector).
6. Misma launch option de arriba.
