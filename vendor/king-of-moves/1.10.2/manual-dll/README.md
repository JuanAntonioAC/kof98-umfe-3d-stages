# King of Moves: Restoration 1.10.2

Released 2026-11-15. Brings back features of the PlayStation 2 versions of **The King of Fighters '98 Ultimate Match** and
**The King of Fighters 2002 Unlimited Match** to the PC versions: 3D stage backgrounds, Colour Edit, the PS2 soundtrack,
the gallery and more. Unofficial fan project; not affiliated with SNK.

Project page: https://brigon.dev/projects/king-of-moves-restoration/

## What's in this download

| File | What it is |
|---|---|
| `kom-setup` / `kom-setup-…-windows-x86_64.exe` | The setup tool: installs, updates and uninstalls everything. Start here. |
| `dinput8.dll` (separate download) | The in-game module on its own, for manual installs. The setup tool already contains it. |
| `README.md` | This file. |

## What you need

- **Your own game:** *THE KING OF FIGHTERS '98 ULTIMATE MATCH FINAL EDITION* on Steam or GOG, and/or
  *THE KING OF FIGHTERS 2002 UNLIMITED MATCH* on Steam. Steam 64-bit gets every restoration feature;
  '98 Steam 32-bit gets the Esc fix and the hitbox viewer (F2 in Practice), and GOG gets the Esc fix, BORDER: MOVES and the hitbox viewer.
- **For KOF '98 Steam 64-bit restorations: your own PS2 disc image** (`.iso`) of *The King of Fighters '98 Ultimate Match*. US, European and Japanese/Korean
  discs all work. The 3D stages, PS2 music, gallery art and movies are copied from it. Nothing is downloaded.
- **KOF 2002** needs no disc. A PS2 disc image (normal or Tougeki) only adds two movies and the PS2 gallery thumbnails.
- **Linux / Steam Deck:** Proton Experimental or a current Proton. In the game's Steam properties set the launch option
  `WINEDLLOVERRIDES="dinput8=n,b" %command%` (the setup tool shows it too).
  For GOG in Heroic, Lutris or Wine, set `WINEDLLOVERRIDES` to `dinput8=n,b`; in Bottles, use the dinput8 override
  Native, then Builtin. The setup tool shows launcher-specific instructions and Copy buttons.

## Install

1. Close the game.
2. **Windows:** run `kom-setup-…-windows-x86_64.exe`. **Linux:** unpack and run `./kom-setup`.
3. Pick the game (KOF '98 or KOF 2002); the game folder is usually found automatically.
4. For KOF '98 Steam 64-bit, choose your PS2 disc image if installing the PS2 stages, soundtrack or gallery.
5. Tick what you want and press **Install**. Start the game as usual.

The features are switched on in the game's own menus: **Help & Options → Settings** (GRAPHIC SETTING > BACKGROUND, PORTRAITS…; SOUND SETTING > BGM; CHARACTER SETTING for Colour Edit), and **GALLERY** on the main menu.

**Updating:** the setup tool tells you when a new version is out and opens the download page. Install again with the new setup tool; your settings and outfits are kept.
The title and header show the version and build number. `kom-setup --version` prints them without opening a window.

## Your data is kept safe

- **Colour Edit outfits** are saved in the game folder (`kom_palettes.bin` for '98, `kom_palettes02.bin` for 2002) and **backed up
  automatically** outside the game folder after every save and before every install, update or uninstall:
  - Windows: `%APPDATA%\King of Moves\backups\`
  - Linux / Steam Deck: `~/.local/share/king-of-moves/backups/`
- If you reinstall the game, **Install** puts your newest outfits back. Installing or updating never overwrites them.
- Your in-game choices are in `kom_settings.ini` / `kom_moves.ini` in the game folder.

## Online play

Steam lobbies always use the stock behaviour (2D stages, stock stage set), so players with and without King of Moves can play
together. Your choices come back when you leave the lobby. King of Moves' own online play across Steam and GOG is coming
separately as a beta.

## Uninstall

Run the setup tool and press **Uninstall**. "Keep my Colour Edit outfits" is ticked by default; even when it isn't, a backup is
made first. Steam's "Verify integrity of game files" also restores the stock game.

## Problems?

- Log file: `kom_proxy.log` in the game folder. Please attach it to reports.
- Report form: https://brigon.dev/report/ (you get an email when your report is fixed, if you leave an address).
- Guide and FAQ: the King of Moves wiki, linked from the project page.

## What's new in 1.10.2

Bug fixes, including two of 1.10.1's Known limits (the Italy photographer in KOF 2002's NEOGEO mode, and the strip left at the top of the 480 views when a stage intro is skipped), and the hitbox viewer for KOF '98 on Steam 32-bit and GOG.

**Legend:** 🟢 Feature · 🔵 Improvement · 🟡 Fix · 🔴 Breaking

### 🟢 Features
- 🟢 **KOF '98 on Steam 32-bit and GOG: the hitbox viewer.** In a Practice fight, F2 shows and hides each fighter's hurt, attack, guard and throw boxes and projectiles, as on Steam 64-bit. These versions have no HITBOXES row in the Practice menu yet.

### 🟡 Fixes
- 🟡 **2002 NEOGEO mode, Italy:** the photographer is drawn in his own colours (blond, blue-grey uniform, black camera) instead of brown and see-through with green dots. (#192)
- 🟡 **2002 SCREEN: 480 Y2 / 480 NESICA:** when a stage intro is skipped, while the fight's opening blinds open, between rounds and after the win screen, the black reaches the top of the picture; no strip of the stage stays visible at the top. (#302)
- 🟡 **2002 GRAPHIC SETTING:** the SCREEN preview no longer cuts or repeats the top of the picture when it shows 480 Y2 or 480 NESICA; only the HUD moves. (#320)
- 🟡 **2002 Practice:** the hitbox viewer keeps showing boxes while a fighter is at 0 life, and no longer leaves a projectile's box on screen after CHARACTER SELECT or STAGE SELECT. (#305)
- 🟡 **BORDER: MOVES:** both sides' move lists use the same text size. (#239)
- 🟡 **KOF '98 SETTINGS:** switching VIBRATION on gives a short rumble, so you can feel that it works (as KOF 2002 already does). (#30)
- 🟡 **2002:** returning from Colour Edit shows the Settings menu straight away instead of replaying its opening animation. (#143)
- 🟡 **Both games, SCANLINES:** now cover only the game picture (select screens, fights, results), no longer the main menu or settings. (#237)
- 🟡 **KOF '98 CHARACTER SETTING:** DirectInput pads' shoulder buttons (L1 / R1 / L2 / R2) now work. (#145)
- 🟡 **Both games, menus:** mouse clicks work on the GRAPHIC SETTING arrows, and the cursor returns to the row you came from after CHARACTER SETTING, Colour Edit and the gallery. Quitting CHARACTER SETTING's character select (Esc, then Yes) goes straight back to SETTINGS. (#264, #323)
- 🟡 **Setup tool:** shows progress while it prepares the '98 gallery movies. (#149)
- 🟡 **KOF '98 settings menus:** Up on the top row of GRAPHIC SETTING goes straight to EXIT, without lighting FLASH on the way; the same for SOUND SETTING and the Practice menu. (#304)
- 🟡 **Input helper (Linux):** with a second copy of the game on the same machine, the out-of-focus input helper only follows the copy it was set up for, and no longer starts, stops or writes its files because the other copy runs. (#317)
- 🟡 **'98 SONG MODE:** ARCADE and RETRO no longer replace the game's special team tracks (for example the '94 Art of Fighting team or the women fighters team) with a character theme. (#318)

### Known limits
- Steam 32-bit gets the Esc fix and the hitbox viewer (F2), GOG the Esc fix, BORDER: MOVES and the hitbox viewer (F2); the other features stay Steam 64-bit only for now.
- On GOG, BORDER: MOVES is not remembered when the game restarts: pick MOVES again in GRAPHIC SETTING.
- On GOG, one Esc on the mode, member and order select screens does nothing yet; Steam's quit question comes to GOG in a later update.
- 2002 NEOGEO mode: the small text on the CONTINUE screen is not fixed yet. (#96)
- 3D stages in the 480 SCREEN views are experimental: the PS2's 3D scenes were built for 448 lines, so 16 lines above and below stay black.
- 2002 3D stages: in SCREEN: TYPE A, GREECE can show parts of its 3D model, and in 480 Y2 / 480 NESICA the classic CHINA stage's reflection can show on the bottom black band. Use SCREEN: TYPE B with 3D stages for now. (#264)
- Online play across Steam and GOG is coming next, as a beta.

**Install:** run the setup tool and press Install.

## Credits and legal

Made by Brigon (brigon.dev). King of Moves contains no game data: everything game-specific is read from your own Steam or GOG game
and your own PS2 disc. THE KING OF FIGHTERS is a trademark of SNK Corporation. Community music packs and other contributions are
credited on the project page.
