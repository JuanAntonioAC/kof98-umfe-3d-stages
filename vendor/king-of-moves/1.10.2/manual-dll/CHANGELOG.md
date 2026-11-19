# King of Moves: Restoration changelog

Every release, newest first.

## 1.10.2

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

## 1.10.1

The fixes promised in 1.10.0's Known limits: KOF 2002's NEOGEO mode draws its text and the high-score table like the PS2, 480 NESICA's top line sits where the arcade has it, and the hitbox viewer becomes a Practice tool in both games.

**Legend:** 🟢 Feature · 🔵 Improvement · 🟡 Fix · 🔴 Breaking

### 🔵 Improvements
- 🔵 **Both games, hitbox viewer:** now a Practice tool. Its HITBOXES switch moved from Settings to the Practice menu (below DASH in '98, below SHOW INPUTS in 2002), and F2 works in Practice only. Boxes switched on in Practice no longer show in other modes, NEXT STAGE or online. In 2002 the pause menu is no longer covered by the boxes; '98 still dims them. (#249)
- 🔵 **Setup tool, Linux and Steam Deck:** Install and Uninstall check that the game in the chosen folder is closed, and ask you to close it first instead of changing its files while it runs. (#261)

### 🟡 Fixes
- 🟡 **2002 NEOGEO mode:** the green team names under the life bars and the other classic text show whole letters (KYO no longer reads like K4N), and the header text is no taller than on the PS2. (#257)
- 🟡 **2002 NEOGEO mode:** after EXIT GAME, the RESULT / high-score table shows its names and scores instead of coloured blocks. (#258)
- 🟡 **2002 SCREEN: 480 NESICA:** CHALLENGER, BEAT BY, PRESS START, WIN and the score sit one text row lower, on the life bars, as on the NESiCA arcade. 480 Y2 is unchanged. (#240)
- 🟡 **2002, BORDER: MOVES:** the move lists come back after playing with BORDER: NONE on a classic 3D stage. (#264)
- 🟡 **2002 2P VS:** player 2's pause menu answers to LK / HK again, not only the arrow keys and the mouse. (#264)
- 🟡 **2002 Arcade SINGLE PLAY:** the win count shows once, under the life bars, instead of also next to the score (TEAM PLAY keeps WIN next to the score). (#301)
- 🟡 **'98, GRAPHIC SETTING:** changing BACKGROUND, PORTRAITS or BORDER plays the cursor sound once, at the same volume as the game's own rows (on GOG too for BORDER). (#286)
- 🟡 **2002:** ORIGINAL ZERO's MAX2 reads "Kyokusei Meikaijin" instead of C-ZERO's move name, in the game's SKILL LIST and in BORDER: MOVES (English, Portuguese and Spanish; Uninstall puts the game's own text back). (#267)
- 🟡 **2002, BORDER: MOVES:** the Orochi team (Orochi Yashiro, Shermie and Chris) shows its own move lists in UM too. (#280)
- 🟡 **2002 GALLERY:** the KOF2002UM OPENING movie plays when started with Start instead of closing at once. (#280)
- 🟡 **Both games, GALLERY:** the gallery's keys only count while the game window is in front. (#280)
- 🟡 **2002 3D stages:** IGNIZ's stage plays its opening as on the PS2 and ends lit, instead of showing a black backdrop. Moving 3D scenery now pauses during a super's flash, as on the PS2, instead of jumping ahead afterwards. (#287)

### Known limits
- Steam 32-bit gets the Esc fix and GOG the Esc fix and BORDER: MOVES; the other features stay Steam 64-bit only for now.
- On GOG, BORDER: MOVES is not remembered when the game restarts: pick MOVES again in GRAPHIC SETTING.
- On GOG, one Esc on the mode, member and order select screens does nothing yet; Steam's quit question comes to GOG in a later update.
- 2002 NEOGEO mode: the Italy photographer's colours and the small text on the CONTINUE screen are not fixed yet. (#192)
- 3D stages in the 480 SCREEN views are experimental: the PS2's 3D scenes were built for 448 lines, so 16 lines above and below stay black.
- 2002 480 Y2 / 480 NESICA: when a stage intro is skipped, a strip at the top can stay visible while the rest of the picture goes black. (#302)
- 2002 3D stages: in SCREEN: TYPE A, GREECE can show parts of its 3D model, and in 480 Y2 / 480 NESICA the classic CHINA stage's reflection can show on the bottom black band. Use SCREEN: TYPE B with 3D stages for now. (#264)
- Online play across Steam and GOG is coming next, as a beta.

**Install:** run the setup tool and press Install.

## 1.10.0

**King of Moves now installs on every '98 UMFE version: Steam 64-bit, Steam 32-bit and GOG.** KOF 2002 UM gets two arcade SCREEN layouts and a SCREEN preview, and its sounds and NEOGEO mode music now follow the
PS2. '98 UMFE gets the PS2 gallery's event scenes back and the PS2 and FE arcade sound balance, and 3D stages on both
games are framed like the PS2.

**Legend:** 🟢 Feature · 🔵 Improvement · 🟡 Fix · 🔴 Breaking

### 🟢 Features
- 🟢 **Setup tool:** installs on all three '98 UMFE versions: **Steam 64-bit** (every feature), **GOG** (the Esc fix and **BORDER: MOVES**, the move lists in the side borders) and **Steam 32-bit** (the Esc fix; more features follow). It detects which version you have and installs the matching module. (#215)
- 🟢 **2002:** two arcade looks for SCREEN: **480 Y2** (the old ARCADE 480, now with the console font and blue ranking headings) and **480 NESICA** (the NESiCAxLive layout). Both only change the picture. If you had ARCADE 480, you get 480 Y2 and nothing looks different. (#19)
- 🟢 **2002:** SCREEN preview: changing GRAPHIC SETTING > SCREEN shows a full-screen frame from your last fight in the chosen mode, with nothing drawn over the picture (the mode's name and the keys sit beside or under it). (#200, #234)
- 🟢 **Both games:** press **F8** in game, mid-fight included, to switch SCREEN without opening a menu. It steps in the SCREEN row's order (2002: TYPE A, TYPE B, 480 Y2, 480 NESICA). (#236)
- 🟢 **'98:** GALLERY > MOVIES starts with the PS2 gallery's in-engine event scenes. (#50)
- 🟢 **'98:** the Esc fix now also works on **Steam 32-bit and GOG**: Esc gives Start to player 1 only, and never on the select screens. (#196)

### 🔵 Improvements
- 🔵 **2002:** CLASSIC STAGES (OFF / 10% / 25% / 50% / ALWAYS) and VS STAGE (HOME / RANDOM) in GRAPHIC SETTING. (#153, #88)
- 🔵 **'98:** every sound effect plays at the volume the game's own sound tables give it, as on the PS2 and the FE arcade; paired effects go one to each speaker. (#197)
- 🔵 **Both games:** 3D stages are framed like the PS2 in every SCREEN type (the Steam port drew them about 7% too wide; in '98's SCREEN TYPE B the fighters and waiting team members stood 6 lines too low, in 2002's TYPE A and B the stage was drawn over 480 lines, about 7% too tall and up to 15 lines too low), and in '98 the scenery in front of the fighters follows the PS2's depth rule. (#162, #167, #170, #198, #254)
- 🔵 **Both games:** gallery movies have the PS2's controls: they play to the end and Start skips back to the gallery ('98: Start, Esc or a right click; 2002: Start or B, the PS2's cross, or Space, Esc, Backspace or a right click). (#228)
- 🔵 **Setup tool:** when a new version is out, it shows the release summary and **Open the download page**.
- 🔵 **Setup tool:** the window title, header and current-version messages show the version and the in-game module's build number, also available with `kom-setup --version`.
- 🔵 **Both games:** King of Moves also works on a game EXE you edited yourself (for example to show PlayStation button icons), as long as every part of the file King of Moves uses is unchanged. The setup tool shows "modified file: King of Moves' parts match"; if an edit is in the way, it names the King of Moves features it affects and how to get the store's own file back. The game checks this again at every start. (#247)

### 🔴 Breaking
- 🔴 **'98:** KEYBOARD GAP and KEYBOARD SOCD (from 1.9.0) are removed for now; the keyboard uses the game's own filter again. They may come back later.

### 🟡 Fixes
- 🟡 **2002:** a classic stage picked for a match stays for the whole match. (#157, #162)
- 🟡 **2002:** skipping NEXT STAGE no longer shows the fighters on a black background. (#41)
- 🟡 **2002:** sound effects keep the PS2's left and right placement.
- 🟡 **2002 NEOGEO mode:** classic stage music loops at the PS2's loop points instead of stopping after a minute or two. (#192, #184, #229)
- 🟡 **2002 NEOGEO mode:** leaving CHALLENGE no longer leaves the main menu on top of the game.
- 🟡 **2002 Arcade:** only the playing side can skip the event movies, as on the PS2. (#42)
- 🟡 **2002:** after leaving CHALLENGE, the main menu no longer shows a hidden menu or a leftover quit box.
- 🟡 **'98:** Chris's 236+K plays his own voice line. (#197)
- 🟡 **'98:** quitting after CHARACTER SETTING no longer flashes an old menu. (#205)
- 🟡 **Both games:** the hitbox viewer (F2) draws boxes where the sprites are, also in '98's TYPE B, and shows 2002's projectiles. (#36, #110)
- 🟡 **Both games, BORDER: MOVES:** the move lists show in matches and demonstration fights, and the borders are black everywhere else (menus, select screens, gallery, movies, results, NEOGEO mode's title and menus) instead of showing the ART picture. On GOG the lists no longer show on the main menu. (#231, #238)
- 🟡 **Both games, GRAPHIC SETTING:** BORDER goes from NONE to MOVES in one step; ART no longer shows for a moment in between. (#235)
- 🟡 **2002, 480 Y2 / 480 NESICA:** the 3D stages are drawn in the PS2 framing inside the 480-line picture, with black above and below them behind the HUD. Before, they showed past the end of their scenery (black blocks at the top and bottom of ITALY and NEOGEO WORLD, GREECE's model edge, IGNIZ's carpet, the restored classic stages' floor edge), and the black that RC2 put over it covered the pause menu and the bottom gauges. **3D stages in the 480 views are experimental:** the PS2's 3D scenes were built for 448 lines, so 16 lines above and below stay black (nothing of the fight is cut: the HUD and the fighters draw over them). The 2D stages fill all 480 lines. (#241, #253)
- 🟡 **Both games, BORDER: MOVES (Steam 64-bit):** the move lists no longer give way to the game's ART picture (Nameless and K' in 2002) in fights; the border picture is found through the game's own reference to it. (#253)
- 🟡 **Both games, hitbox viewer:** boxes show only in fights (2002 left them on the main menu), and F2 does nothing while paused (pause, Practice and NEOGEO MODE menus) or outside fights. (#253, #254)
- 🟡 **2002 SCREEN preview:** the picture is taken from the running fight only, never as a pause menu closes or from SKILL LIST. (#253)
- 🟡 **'98 GALLERY:** after a demo entry on the MOVIES page, leaving the gallery keeps the cursor on GALLERY instead of ARCADE PLAY. (#254)
- 🟡 **Both games, GALLERY:** the button legend now uses the usual letters (A = LP, B = LK, C = SP, D = SK): B views or plays, D or Esc goes back, A / C change the category, C / A zoom a picture. The buttons themselves do what they did. (#228)
- 🟡 **Both games:** when King of Moves can't run on the game file (a version or an edit it doesn't support), the game now shows its own menus. Before, King of Moves' rows stayed and did nothing: 2002's GRAPHIC SETTING values read "missing string", the main menu cursor skipped items, and HELP & OPTIONS > LANGUAGE didn't open. (#245, #246)
- 🟡 **2002:** King of Moves' GRAPHIC SETTING values show in English when a language lacks a word, instead of "missing string". (#245)
- 🟡 **2002 main menu with a controller:** one press moves the cursor exactly one item, also when the game sees your controller twice (Steam Input shows a copy of it), and player 1 or player 2 can pick any mode, as in '98. Since 1.8 a press sometimes moved the cursor two rows. (#250, #246, #28)
- 🟡 **'98 main menu:** Down on QUIT goes to the top row's CPU VS instead of jumping to GALLERY, without GALLERY flashing on the way. (#246, #18, #254)
- 🟡 **2002 NEOGEO MODE with SCREEN: 480 Y2:** the classic game keeps its own letters, as on the PS2: the title's PRESS START, and WIN:00 and the score in fights, could show in the UM menus' letters ("IN:00"). (#252, #251)
- 🟡 **Setup tool, '98 on Steam:** installs for the 64-bit game, Steam's normal Play, unless you choose the 32-bit game; it no longer switched to 32-bit by itself when it didn't recognise the 64-bit file (CHARACTER SETTING and the other 64-bit features then went missing). It also warns when the installed module doesn't match the game Steam starts. (#247, #230)
- 🟡 **Setup tool:** the Copy buttons put their text on the clipboard and the links open in your browser; the light / dark theme buttons and the ✔ marks show their symbols instead of empty boxes. For Heroic and Lutris the GOG card shows the setting's name and value in two fields, each with its own Copy. (#216)
- 🟡 **Setup tool:** Install keeps your add-on choices: an update no longer switches the out-of-focus input add-on on, or a move list you switched off back on. Uninstall also stops the out-of-focus input helper and removes its login entry and the files it left, so the game folder has only the game's own files again; your outfit backups stay. Every start of the game now writes King of Moves' build number as the first line of `kom_proxy.log`. (#226)

### Known limits
- Steam 32-bit gets the Esc fix and GOG the Esc fix and BORDER: MOVES; the other features stay Steam 64-bit only for now.
- On GOG, BORDER: MOVES is not remembered when the game restarts: pick MOVES again in GRAPHIC SETTING.
- On GOG, one Esc on the mode, member and order select screens does nothing yet; Steam's quit question comes to GOG in a later update.
- 2002 NEOGEO mode: the Italy photographer's colours and the small text on the CONTINUE screen are not fixed yet. The photographer's cause is found, and the fix comes in 1.10.1. (#192)
- 2002 NEOGEO mode: the green team names under the life bars lose the bottom of their letters (KYO reads like K4N), and the header text sits a little higher than on the PS2. Fix in 1.10.1. (#257)
- 2002 NEOGEO mode: after EXIT GAME, the RESULT / high-score table can show coloured blocks instead of names and scores until the game restarts. Fix in 1.10.1. (#258)
- Hitbox viewer: F2 also works outside Practice, and in 2002 the boxes draw over the pause menu instead of dimming like '98's. In 1.10.1 the viewer becomes Practice-only in both games. (#249)
- 2002 SCREEN: 480 NESICA: CHALLENGER, BEAT BY, PRESS START and the score sit one text row higher than on the NESiCA arcade. Fix in 1.10.1. (#240)
- 3D stages in the 480 SCREEN views are experimental: the PS2's 3D scenes were built for 448 lines, so 16 lines above and below stay black.
- 2002 SCREEN: 480 Y2 / 480 NESICA with 3D stages: use SCREEN: TYPE B for now. TYPE A can leave parts of the 3D model visible (GREECE), and the classic CHINA stage's reflection can show on the bottom black band. Fix in 1.10.1. (#264)
- BORDER: MOVES can stop showing the move lists after playing with BORDER: NONE on a classic 3D stage: pick MOVES again or restart the game. Fix in 1.10.1. (#264)
- 2002 2P VS: player 2's pause menu only answers to the arrow keys and the mouse, not LK / HK. Fix in 1.10.1. (#264)
- Linux / Steam Deck: close the game before pressing Install or Uninstall. In 1.10.1 the setup tool checks this for you. (#261)
- Online play across Steam and GOG is coming next, as a beta.

**Install:** run the setup tool and press Install.

## 1.9.0

KOF 2002 gets the PS2's Colour Edit and the unused 3D remakes of the original KOF 2002 stages, 3D stages in both games are drawn as sharp as on the PS2, your outfits are now backed up automatically, and the setup tool accepts PS2 discs from every region.

**Legend:** 🟢 Feature · 🔵 Improvement · 🟡 Fix · 🔴 Breaking

### 🟢 Features

**2002 UM: Colour Edit** (#129)
- **Settings > CHARACTER SETTING** opens the PS2's own colour editor for 2002, framed like the game's other 2D screens.
- The rows read **CD COLOR EDIT** and **AB COLOR EDIT** (in 2002 the first slot is the C+D outfit), with coloured button letters as in '98.

**2002 UM: classic stages** (#136)
- Steam 2002 ships 3D remakes of five stages from the original KOF 2002 that UM never used: the Japan temple garden, the China waterfront moon gate, the Holland windmill village, the Mexico ruins and the Pisa platform in Italy.
- With the 3D stages on, they now turn up **now and then** (about 1 time in 10) in place of the UM version of those stages. Offline only: online matches always use the UM stages. A setting to choose them yourself is planned for 2.0.

**Your outfits are backed up** (#148)
- After every Colour Edit save, and before every install, update or uninstall, your outfits are copied outside the game folder (Windows `%APPDATA%\King of Moves\backups`, Linux/Steam Deck `~/.local/share/king-of-moves/backups`).
- After reinstalling the game, Install puts your newest outfits back. Installing or updating never overwrites them.

### 🔵 Improvements

- **Setup tool:** accepts the **European** and **Japanese/Korean** '98 discs as well as the US one (#130, #120), and both 2002 discs (normal and Tougeki).
- **Downloads:** every download now includes a **README** and the full **CHANGELOG** (#118).

### 🟡 Fixes

- **Both games:** 3D stages are drawn sharp like the PS2: no more dark outlines around trees, crowds and other cut-outs (#40, #61, #123).
- **Both games:** leaving Colour Edit with ESC → YES no longer locks CHARACTER SETTING (#140), and CHARACTER SETTING plays the menu sound.
- **Both games:** the main menu wraps around without an extra press when GALLERY is installed (#18).
- **'98:** no more crash opening a Settings screen right after leaving Colour Edit (#147).
- **'98:** Colour Edit's Color Sample window shows the real outfit colours and sits over the fighter, as on PS2 (#138).
- **'98:** changing SOUND SETTING > BGM switches the music at once (#39).
- **'98:** gallery movies from the Japanese disc play correctly (#57).
- **2002:** the GRAPHIC SETTING cursor no longer gets stuck on BACKGROUND or DOOR ANIMATION (#141).
- **2002:** no stray PLEASE WAIT above the main menu (#142); WIN count next to the score in Arcade (#44); no name entry for a player who joined mid-way and lost (#45).
- **2002:** the Italy and ZERO backgrounds pause with the game (#119), and Iori's MAX2 turns the 3D background red like the 2D one (#132).
- **2002 Practice:** when player 2 starts Practice, the Practice menu and the pause menu follow player 2's controller (#56).
- **Both games:** the pause menu's HELP & OPTIONS no longer shows LEADERBOARDS, ACHIEVEMENTS and LANGUAGE, which froze the match or dropped you to the main menu (#55).
- **'98:** the pause menu's SETTINGS keeps its layout after visiting SOUND SETTING.
- **2002 (Portuguese):** the blinking APERTE START prompt no longer leaves its last T on the screen (#154).
- **Both games:** Colour Edit works with DirectInput pads and arcade sticks: their own A/B/C/D, Start and Select buttons enter, cancel, copy, paste, sample and reset (#145).

### Known limits

- 2002: after leaving Colour Edit the menu frame closes and opens again once (#143).
- '98: a DirectInput-only joystick can't control Colour Edit yet; the keyboard works (#145).
- Edited outfits on the order select, win and continue screens are a King of Moves addition; the PS2 shows the stock costume there. GRAPHIC SETTING > PORTRAITS > OFF gives the PS2 behaviour.

## 1.8.0

Your Colour Edit outfits now show on every screen in '98, the '98 3D stages look like the PS2 (complete walls, rippling water), and 2002 gets an ARCADE 480 screen mode, a proper second-player join and several NEOGEO-mode fixes.

### New

**'98 UMFE: your outfits everywhere** (#34)
- Edited A+B / C+D outfits now show on the **order select**, the **intro** (FIRST STAGE…), the **win screen** (winner and teammates) and the **continue screen**, not only in the fight.
- The portraits follow your colours using the game's own eight costumes as a guide: for each character, the colours that change together across the stock costumes are linked to the sprite colours they follow, so the portraits are recoloured the way the game's own costumes are.
- **GRAPHIC SETTING > PORTRAITS:** AUTO (default; the best method per character), BOLD (follows your colours fully, including skin highlights that share costume colours, e.g. a "mask" look), OFF (stock portraits; your colours only in the fight). Comes with Colour Edit in the setup tool.
- The continue screen now shows the costume the character actually wore (any of the eight), not always costume A.

**2002 UM: ARCADE 480** (#19)
- A third **SCREEN** choice in GRAPHIC SETTING: TYPE A, TYPE B, **ARCADE 480**. Shows the arcade's full 640×480 picture (the PS2 port and Steam squash or crop it) with every HUD element in its arcade position. NEOGEO mode stays as the classic game draws it.

**2002 UM: Arcade join** (#13, #28)
- Player 2 can press Start during Arcade to join, the free side shows PRESS START and your WIN count, as on the arcade. Off in Steam lobbies.
- Player 2 can now start game modes from the menus.

**Setup tool**
- **Update now:** when a newer version is out, the setup tool can download it, check it against the release's SHA-256 list, replace itself and restart (tested on Linux; Windows untested).
- The tool and its download page now carry the project's name, **King of Moves: Restoration**.

**Both games: out-of-focus play** (#22, #26)
- The setup tool's input helper starts and stops with the games by itself (no need to keep the setup tool open).
- Controller vibration keeps working when the game window isn't focused.

### Fixes

**'98 UMFE 3D stages**
- Korea: the near water is drawn again and the water ripples move (#15, #33). Two Steam port bugs: the water texture was shifted instead of scrolled, and a broken vector helper squashed every "bent" stage part (water, cloth, some figures) onto a line; those parts are back on every stage.
- Middle East and others: no more see-through strips in walls and no dark outlines around cut-outs (#16); stages are drawn with the PS2's own rules (no alpha cut-off, depth from solid scenery).
- Practice lists every 3D version of Korea and Middle East, not only dawn (#14).

- '98 music: leaving a CPU VS match to the menu stops the fight song (#32).

**2002 UM**
- Krizalid's stage no longer starts mid-transition as the first Practice stage; the round-start camera intro of the 3D stages plays like the PS2 (#11).
- Japan School no longer turns sky blue during SDMs, and character select doesn't stay sky blue (#5).
- NEOGEO mode: pausing keeps the background (#6); BUTTON CONFIG returns to OPTION (#7); the windmill tower is grey stone again (#20).
- GRAPHIC SETTING: the preview fighter shows SCANLINES (#23); the value column is wider so ARCADE 480 fits.

### Known limits
- Portraits follow your colours only where the artwork has matching colours; characters whose portraits change in ways their sprites don't (e.g. Joe's skin tones) follow more loosely. PORTRAITS > OFF keeps the stock art.
- Tested on Linux / Proton; the DLL has not been run on Windows yet.

**Install:** run the setup tool, tick what you want and press Install (re-run it to get the new PORTRAITS row). Files:
`kom-setup-<version>-linux-x86_64.tar.gz` / `kom-setup-<version>-windows-x86_64.exe`, `dinput8.dll` (manual install only), `SHA256SUMS`.

## 1.7.1

A small setup-tool presentation update following the 1.7.0 gallery release.

**Setup tool**
- The heading now shows **By Brigon** after the King of Moves name and version. **Brigon** is a direct link to [brigon.dev](https://brigon.dev/).
- The installed module and game features are unchanged from 1.7.0; this update only changes the setup window.

**Known limits**
- Tested on Linux / Proton; the DLL has not been run on Windows yet.

**Install:** existing 1.7.0 users do not need to reinstall unless they want the updated setup tool. Files:
`kom-setup-<version>-linux-x86_64.tar.gz` / `kom-setup-<version>-windows-x86_64.exe`, `dinput8.dll` (manual install only), `SHA256SUMS`.

## 1.7.0

The PS2 art gallery comes back to both games, with its movies, plus tidier menus.

**Both games: GALLERY (main menu)**
- **'98 UMFE:** the PS2 version's 177 artworks (PlayStation 2, PlayStation and Dream Match 1999 art) and its five movies (the Dream Match opening, DC version, and ULTIMATE COMBO MOVIE Vol.1-4, with the PS2's own thumbnails), all unlocked. Needs your PS2 disc image: the setup tool copies them from it. Movies in High quality (about 855 MB: the four combo movies exactly as on the disc) or Medium (about 470 MB).
- **2002 UM:** 148 artworks (characters at full height, teams, story), and 58 movies in the PS2 gallery's order: DEMO & MOVIE (opening, boss entrances, staff rolls A-F), ENDING WATCH (all 36 team endings), and the TARGET intros. The PS2's official thumbnails and its two PS2-only movies (A NEW CHALLENGER, the TGS promo) come from your PS2 disc image if you give it; everything else is in the Steam game already.
- Mouse like the other menus (hover, click, right click back, wheel for pages and zoom, drag to pan), on-screen arrows for previous/next, arrow keys reach the category tabs, Esc goes back, and the game's own menu sounds.
- Pictures: zoom and pan like the PS2 (D / C, or + / -).
- Movies: pause (Enter / A / click), size 480 / 720 / full (Tab / D), previous / next (Left / Right, L1 / R1), a button legend (H / C hides it), Esc / B back. The game's music stops while a movie plays.
- **Linux:** Proton can't play 2002's movie files, so the setup tool can make full-quality copies (High, about 1.2 GB, identical picture and sound) or smaller ones (Medium, about 230 MB). Windows plays the originals. The setup tool checks that your system has the GStreamer parts the conversion needs and shows the command to install any that are missing.

**Both games: menus**
- The main menu is laid out the same way in both games: ONLINE | GALLERY, NEOGEO MODE | PRACTICE, ENDLESS | CHALLENGE, HELP & OPTIONS | QUIT, evenly spaced.
- LEADERBOARDS, ACHIEVEMENTS and LANGUAGE are in HELP & OPTIONS now.
- CONTROLS has a wider device column, so long controller names fit.

**2002 UM**
- **GRAPHIC SETTING > DOOR ANIMATION:** NORMAL, FAST, or OFF (menus switch at once, no door).

**Known limits**
- 2002 movies: resizing a movie that was paused right after it started can show a black picture until you resume.
- '98 movies: the Dream Match opening is MPEG-2 on the disc and is converted for the player (no visible difference, but not bit-exact). On Windows only the four combo movies are made for now (the opening and Medium quality need a conversion that is Linux-only).
- Tested on Linux / Proton; the DLL has not been run on Windows yet.

**Install:** run the setup tool, tick what you want and press Install. Files:
`kom-setup-<version>-linux-x86_64.tar.gz` / `kom-setup-<version>-windows-x86_64.exe`, `dinput8.dll` (manual install only), `SHA256SUMS`.

## 1.6.4

A quick fix for '98 UMFE's 3D stages.

**'98 UMFE: 3D stages**
- **Fighters no longer lose their legs on the Korea stage** (and one other stage). The 1.6.0 change that keeps scenery in front of the fighters also covered some pillars, rails and floor behind them; only the parts that are really in front of the fighters are kept in front now. The China boat, '96 Boss, Goenitz and JPN Temple foregrounds stay as they were.

**Known limits**
- In VS modes the stage is the opponent team's home stage (the game's own rule); a random-stage option is planned.
- Tested on Linux / Proton; the DLL has not been run on Windows yet.

**Install:** run the setup tool and press Install (it updates the module). Files:
`kom-setup-<version>-linux-x86_64.tar.gz` / `kom-setup-<version>-windows-x86_64.exe`, `dinput8.dll` (manual install only), `SHA256SUMS`.

## 1.6.3

New keyboard options for '98 UMFE, a fix for the move lists switching to the wrong character mid-fight, and a PS2-accurate camera for KOF 2002 UM's 3D stages.

**'98 UMFE: keyboard players**
- Two new rows in **SETTINGS: KEYBOARD GAP** and **KEYBOARD SOCD** (tick "Keyboard input options" in the setup tool). They tune the keyboard filter Code Mystics added in v1.01:
  - **KEYBOARD GAP** (0–3 frames): how many neutral frames are added when a direction reverses, e.g. down-back straight to down-forward. 1 is the game's own; 0 is the input from before that patch.
  - **KEYBOARD SOCD**: what left+right or up+down held together do: NEWEST (the game's own), FIRST, NEUTRAL, or BOTH (before that patch).
  - The defaults (1 FRAME, NEWEST) are exactly the Steam game. Controllers are never affected, and online play always uses the game's own setting.

**Both games: move lists**
- The border move lists no longer flash another character's list when a fighter is knocked down or tripped. They still switch right away when the next team member walks in.

**2002 UM: 3D stages**
- The fight camera now uses the PS2's field of view, so the stages are framed as on PS2 and the black band below the beach floor (Italy) is gone.

**Known limits**
- In VS modes the stage is the opponent team's home stage (the game's own rule); a random-stage option is planned.
- Tested on Linux / Proton; the DLL has not been run on Windows yet.

**Install:** run the setup tool and press Install (it updates the module). Files:
`kom-setup-<version>-linux-x86_64.tar.gz` / `kom-setup-<version>-windows-x86_64.exe`, `dinput8.dll` (manual install only), `SHA256SUMS`.

## 1.6.2

Fixes for both games. 3D stage foregrounds now cover the fighters' feet like on PS2, and the border move lists switch right away when a new team member comes in.

**'98 UMFE**
- **3D stages: parts in front of the fighters now stay in front**, like on PS2: the China 1 boat's deck edge, the '96 Boss statue and railing, the Goenitz candle stands and the JPN Temple planks cover the fighters' feet.
- **The border move list switches to the next team member as they walk in**, not a few seconds later.
- **Esc** now pauses for Player 1 only (it used to land on Player 2 in fights), and no longer moves both cursors or changes the mode on the select screens.

**2002 UM**
- **The border move list switches to the next team member as they walk in** (it used to follow about 2 seconds late).
- **3D stages: no more black boxes around cut-outs** (crowd cameos, the colosseum statue, the floor logo) after the game window was minimised.

**Known limits**
- In VS modes the stage is the opponent team's home stage (the game's own rule, not a bug); a random-stage option is planned.
- Esc still only works for Player 1 when both players use the keyboard.
- Tested on Linux / Proton; the DLL has not been run on Windows yet.

**Install:** as 1.6.0 (the setup tool updates the module; press Install). Files:
`kom-setup-<version>-linux-x86_64.tar.gz` / `kom-setup-<version>-windows-x86_64.exe`, `dinput8.dll`, `SHA256SUMS`.

## 1.6.1

A bug-fix release. **Please update if you play The King of Fighters '98 Ultimate Match Final Edition:** 1.5.0 and 1.6.0 could make it crash a few seconds after starting.

**'98 UMFE**
- Fixed the game **crashing shortly after start-up** (a check meant only for KOF 2002 UM ran in '98 too).
- Fixed crashes on the **Korea** stage at a round change, and on **Ura Orochi 3**, with 3D stages on (two stage animations were started with the wrong task).
- The **move lists in the border** now appear during the character intros, not only from round start.

**2002 UM**
- Fixed **fighters turning invisible and 3D stages showing white or black blocks** after a long PRACTICE session with automatic character changes (the game ran out of texture slots).

**Both games**
- With **BORDER: MOVES**, the menus now show the game's normal border art; the move lists appear only during fights.

**Known limits**
- On the '98 China (boat) stage, the front edge of the deck doesn't cover the fighters' feet the way it does on PS2 (3D stages).
- Tested on Linux / Proton; the DLL has not been run on Windows yet.

**Install:** as 1.6.0 (the setup tool updates the module; press Install). Files:
`kom-setup-<version>-linux-x86_64.tar.gz` / `kom-setup-<version>-windows-x86_64.exe`, `dinput8.dll`, `SHA256SUMS`.

## 1.6.0

Finishes **NEOGEO MODE** in **The King of Fighters 2002 Unlimited Match** and restores **SAME CHARACTER**. Nothing from the games is included; everything is read from your own game files.

**2002 UM: NEOGEO MODE**
- **Japanese win quotes now show their text** instead of solid blue bars (the game drew each character with the wrong texture).
- **The windmill stage (Netherlands) no longer shows orange noise**: the stage's missing palettes are filled in, also when the stage comes up again later.
- **SKILL LIST works from the pause menu**, showing the current character's moves (it used to do nothing).
- **EXIT GAME from SINGLE or TEAM play returns to the NEOGEO attract** instead of drawing the main menu over the running classic game. Exiting from the attract still goes back to the main menu.
- **The move-list borders follow the NEOGEO fighters** (BORDER: MOVES), including the Orochi versions of Yashiro, Shermie and Chris.
- The **hitbox viewer** (F2 / the HITBOXES row) now also works in NEOGEO fights.
- More stability fixes for stage changes in classic VS matches.

**2002 UM: SAME CHARACTER**
- **BATTLE SETTING > SAME CHARACTER** is back (it was hidden in the Steam version). Set it to ON to put the same character on a team more than once, like '98 UM. Your choice is saved.

**Known limits**
- The moves shown in NEOGEO MODE are Unlimited Match's move lists; a few characters' moves differ in the original KOF 2002.
- NEOGEO MODE still has no controls / key-setting screen, and the CONTINUE screen's small text may not draw correctly.
- The NEOGEO hitbox viewer and the windmill repeat-load fix were built and checked against the game, but not yet seen in a live fight at the time of this release.
- **After a long PRACTICE session with automatic character changes (Watch / AUTO CHARACTER SELECT), fighters can turn invisible and 3D stages show white or black blocks** until you restart the game (the game runs out of texture slots; fixed in the next release).
- Tested on Linux / Proton; the DLL has not been run on Windows yet.

**Install:** as 1.5.0 (the setup tool updates the module; press Install). Files:
`kom-setup-<version>-linux-x86_64.tar.gz` / `kom-setup-<version>-windows-x86_64.exe`, `dinput8.dll`, `SHA256SUMS`.

## 1.5.0

Brings **The King of Fighters 2002 Unlimited Match** much closer to parity with '98 UMFE, and fixes a long list of 2002-specific bugs. Nothing from the games is included; everything is read from your own game files.

**2002 UM: NEOGEO MODE fixes**
- Fixed a crash resizing the window or changing fullscreen while in classic mode (a stale scene buffer was rebuilt over the classic stage's own data).
- **PRACTICE now has a working options screen** (ACTION / COUNTER / ATTACK / GUARD / GAUGE / LIFE / CHARACTER CHANGE / EXIT) instead of doing nothing, on by default.
- Fixed a crash entering a 2-player VS match after certain stage changes (a stale background reference).

**2002 UM: 3D stage backgrounds**
- Fixed a bug affecting every "animated" texture page in the 3D stages (skies, falling petals, moving water, screens) rendering wrong, blank or with leftover fighter sprites - traced to a pixel/byte mixup in the module's own texture upload code. This alone fixes the Japan School stage (sky, falling cherry blossoms, the tree canopy) and brings up real content (a radar screen, status readouts) on the hangar stage's monitors.
- Italy's sea now animates again (a Steam-side scroll was fighting the fix for the PS2's own pixel scroll), and stage edges look cleaner (a texture-coordinate rounding bug that showed up as thin outlines on 3D pieces).

**2002 UM: new parity with '98 UMFE**
- **Hitbox viewer**: press **F2** in a fight, or use the new **HITBOXES** row in Settings (below VIBRATION), same display as '98's (attack, hurt, guard and throw boxes, plus projectiles).
- **Play with the game window out of focus** and **readable controller names** on the Controls screen: the same helper '98 already had now also works for 2002 UM.
- **Online player count** on the main menu, above ONLINE.

**Setup tool**
- The Hitbox viewer, out-of-focus input and online player count add-ons are no longer '98-only; the window shows them for 2002 UM too.
- A hidden `DebugMode` tab (type it anywhere in the window) shows live values read from the running game (health, state, position and more) for both games, read-only.

**Known limits**
- 2002 UM's NEOGEO MODE is still experimental: no controls / key-setting screen, the windmill (Netherlands) stage is noisy, and Japanese win quotes / the CONTINUE screen's small text don't draw correctly.
- The 2002 UM HITBOXES Settings row and a couple of the newest 3D-stage tweaks were built and checked against the game's own files, but not yet exercised live at the time of this release.
- Tested on Linux / Proton; the DLL has not been run on Windows yet.

**Install:** as 1.4.0 (the setup tool updates the module; tick the new add-ons and press Install). Files:
`kom-setup-<version>-linux-x86_64.tar.gz` / `kom-setup-<version>-windows-x86_64.exe`, `dinput8.dll`, `SHA256SUMS`.

## 1.4.0

Adds **play with the game window out of focus** (Linux), **readable controller names** on the Controls screen, and an **online player count** on the main menu. Nothing from the games is included; everything is read from
your own game files.

**Out-of-focus input (Linux / Proton only)**
- A new add-on, **Play with the game window out of focus**: controllers and arcade sticks keep working while another window is in front. The setup tool's **Start helper** button runs a small helper that feeds your controllers to the game (the keyboard is left alone).
- No per-controller setup: the helper learns each controller's **buttons and player from the game's own input** (Steam's virtual pads), follows your **Controls screen** choices (swapping who is P1 and P2 works on the fly), and picks up controllers that are plugged in or unplugged while it runs. Press each controller's buttons once in the game the first time. Your Controls settings, including macros, are what the buttons do.
- Not needed on Windows. Uninstalling the add-on removes everything it added.

**Controls screen:** the CONTROLLER rows now show the real controller (for example "PS5 Controller", "Razer Panthera") instead of Steam's identical "Controller (XBOX 360 For Windows)". Names come from the community
[SDL GameControllerDB](https://github.com/mdqinc/SDL_GameControllerDB) (a copy is built in; the helper refreshes it in the background at most once a week, or press **Update controller names**).

**Online player count:** a tickbox adds a line above ONLINE on the main menu ("19 total online, 4 waiting for match"), refreshed every 15 seconds while the menu is open. It uses the same public Steam lobby search as the game's Online menu.

**Known limits**
- The out-of-focus helper needs Linux and Steam Input; the GOG version and Windows were not tested.
- The DLL has not been run on Windows yet.

**Install:** as 1.3.0 (the setup tool updates the module; tick the new add-ons and press Install). Files:
`kom-setup-<version>-linux-x86_64.tar.gz` / `kom-setup-<version>-windows-x86_64.exe`, `dinput8.dll`, `SHA256SUMS`.

## 1.3.0

Adds a **music test-bench of every soundtrack**: pick the game's own songs, the PS2 arrangement or the community "Arrange Music Mod" packs from the menu, separately for UMFE and for the classic Neo Geo mode.
Also a **hitbox viewer**, PalMod support for the Colour Edit outfits, and a friendlier, self-updating **setup tool**. Nothing from the games is included; everything is read from your own game files
(and, for the PS2 extras, your own disc image). The community music is the work of **Rana** on Steam.

**Music**
- **Two BGM rows in Sound Setting** ('98 UMFE): **BGM: UMFE** and **BGM: NEOGEO**, one choice for each game mode (set either from inside either mode). Each row cycles through what you have installed:
  ARCADE (the game's own), ARRANGE (the PS2 disc's arrangement), COMM. ARRANGE MED / HIGH and COMM. ARCADE MED / HIGH (the community packs). A choice whose set you later remove falls back to ARCADE.
- **BGM CHECK** plays the set of the BGM row you highlighted last, so either mode's music can be auditioned from either mode; its ARRANGE section plays again (a bug since 1.2.0's guards).
- **PS2 arrangement is bigger:** 76 songs, now including the arranged **menu songs and character themes** (from the disc's `_c` and Neo Geo CD versions), next to the 38 stage songs.
- **Community music packs** ([Arrange Music Mod by Rana](https://steamcommunity.com/sharedfiles/filedetails/?id=2163840223)): Arranged and Arcade, each in a medium and a high bitrate build. The setup tool
  downloads them for you (with a progress counter and a checksum) or imports the zips you already have; they are added *next to* the game's music and never overwrite it, and each can be removed on its own.
- **EX Terry vs EX Blue Mary** plays Blue Mary's BLUES (Vocal ver.) like the PS2 (with SONG MODE on and the vocal track installed).
- Fixed: RETRO song mode no longer restarts the song when the CPU gets a new fighter.

**Hitbox viewer** ('98 UMFE, training): the **HITBOXES** row below VIBRATION in Settings (also in the training pause menu) or **F2** draws every fighter's hurt, attack, guard and throw boxes and projectiles.
Based on the mod by **odabugs**: [kof-combo-hitboxes](https://github.com/odabugs/kof-combo-hitboxes). Display only.

**Colour Edit + PalMod:** your A+B / C+D outfits can be edited with PalMod through `Data/game/kom_palettes.pal` (the game's own `def.pal` is never touched).

**Setup tool**
- Checks for a newer release when it starts (you can switch that off).
- New add-ons: **Hitbox viewer** and **Music choice rows**; a Music section with the PS2 arrangement and the community packs; the layout now wraps to the window size.

**Known limits**
- Tested on Linux / Proton; the DLL has not been run on Windows yet.
- The community packs are large (from 139 MB to 577 MB each); the PS2 arrangement is about 400 MB at full quality.

**Install:** as 1.2.0 (the setup tool updates the module; for the PS2 arrangement's new menu and character songs tick it and press Install again, for the packs use the Music section). Files:
`kom-setup-<version>-linux-x86_64.tar.gz` / `kom-setup-<version>-windows-x86_64.exe`, `dinput8.dll`, `SHA256SUMS`.

## 1.2.0

Adds in-game **move lists**, a **song mode**, a much better **music test** and a friendlier **setup tool**. Nothing from the games is included; everything is read
from your own game files (and, for the PS2 extras, your own disc image).

**New in the game**
- **BORDER: MOVES** (Graphic Setting, '98 UMFE and 2002 UM): the side borders of the window show both fighters' move lists with their command inputs (the game's own arrow and
  button icons), drawn at the window's real resolution so the text is sharp. It needs only the module (`dinput8.dll`) and updates when the fighters change.
- **SONG MODE** (Sound Setting, '98 UMFE): DEFAULT keeps the game's own music. ARCADE fades the old song out and plays the new fighter's own theme when the round starts; RETRO
  plays it as soon as the new screen appears. The new theme is always the one for the fighter who just joined (the losing side's new fighter); Choi's intro jingle is left alone.
- **BGM CHECK** ('98): titles are tagged (AST) / (ORIG) when an arranged version exists, and after the last entry an **AST section** lists and plays every arranged song by name,
  followed by two **Bonus** songs.
- **Arranged soundtrack** (from your PS2 disc): now 38 songs, including **Soul Town**, plus the two songs the Steam release lists but ships without a file (**MY LOVE** and
  **Blue Mary's BLUES, Vocal Ver**). Loops now follow the disc's loop points and stop at the loop end, as Steam's own songs do.
- **Live stats** under the move lists ('98, testing): health, stun, gauge, combo, state and input for both fighters.

**Setup tool**
- Every add-on is its own tickbox with a short description (3D stages, arranged soundtrack, Colour Edit, move list, SONG MODE, live stats; 2002: 3D stages, NEOGEO MODE, move
  list). Everything starts unticked, with **Select all / Unselect all**.
- **Uninstall** removes the ticked add-ons and puts the game's own settings and screens back; with everything ticked it restores the original files.
- **Launch game** starts the game through Steam. On Linux / Steam Deck it warns, with a Copy button, when the game's Steam launch option doesn't load the module yet.
- Buttons have hover, press and click animations.

**Under the hood**
- The move-list renderer and the game data decoders are now written in Rust (`kom-core`, `kom-art`) and linked into the module.

**Known limits**
- The move list needs a window wider than 4:3 (that's where the borders are), and small windows make its text small. Classic (NEOGEO MODE) 2002 matches show no move list.
- Tested on Linux / Proton. The DLL has not been run on Windows yet.
- Classic NEOGEO MODE (2002) is unchanged from 1.1.0: PRACTICE does nothing, no controls screen, and the windmill stage is noisy.

**Install:** as 1.1.0 (the setup tool updates the module; for the arranged soundtrack tick it and press Install again to add the new songs). Files: `kom-setup-<version>-linux-x86_64.tar.gz` / `kom-setup-<version>-windows-x86_64.exe`, `dinput8.dll`, `SHA256SUMS`.

## 1.1.0

Adds the original **KOF 2002 "NEOGEO MODE"** (locked in the Steam release) to **The King of Fighters 2002 Unlimited Match**.
Nothing from the games is included; everything the module needs is already in your Steam 2002 folder.

**New**
- **NEOGEO MODE** button on the 2002 UM home menu: the classic arcade game with its own character select, matches, name entry and
  **NEOGEO high scores** (saved to `kom_neo_scores.bin` next to the game).
- Fixes for the classic mode in the Steam build (name entry crash, ranking table, Command List guard).
- Setup tool: **NEOGEO MODE** row for 2002 UM (Install adds the button, Uninstall removes it).

**Known issues (NEOGEO MODE)**
- PRACTICE does nothing (its options screen is missing from the Steam build); the controls / key-setting screen is not restored.
- The Netherlands (windmill) stage shows noisy graphics.
- Japanese win quotes and the CONTINUE screen's small text do not draw correctly; resizing the window or toggling fullscreen can crash.

**Install:** as 1.0.0. Files: `kom-setup-<version>-linux-x86_64.tar.gz` / `kom-setup-<version>-windows-x86_64.exe`, `dinput8.dll`, `SHA256SUMS`.

## 1.0.0

Brings features of the PS2 version of **The King of Fighters '98 Ultimate Match** back to the Steam release (Final Edition).
Everything is read from **your own PS2 disc image**; nothing from the games is included.

**Features**
- **3D stage backgrounds** from the PS2, with **GRAPHIC SETTING → BACKGROUND: 3D / 2D** (starts on 2D; online matches always use 2D).
- **Colour Edit** (Settings → CHARACTER SETTING): edit the A+B and C+D outfits with the PS2 controls and fight in them.
- **PS2 arranged soundtrack** with **SOUND SETTING → BGM: ARCADE / ARRANGE**.

**Install:** download `kom-setup` (Linux / Steam Deck) or `kom-setup.exe` (Windows), point it at the game folder and your
NTSC-U disc image (SLUS-21816), tick the features, press Install. Linux / Steam Deck: add the launch option the tool shows.
Full guide: docs/PLAYER_GUIDE.md.

**Files**
- `kom-setup-<version>-linux-x86_64.tar.gz` / `kom-setup-<version>-windows-x86_64.exe`: the setup tool (includes the module).
- `dinput8.dll`: the in-game module on its own, for manual installs.
- `SHA256SUMS`.
