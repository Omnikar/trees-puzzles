Generator for [trees logic puzzles](https://www.sporcle.com/playlists/SporcleEXP/trees-logic-puzzles)

## Generate
Generates an NxN puzzle and writes it to `file`.
- `N` defaults to `5`
- `file` defaults to `out.csv`
```bash
uiua gen.ua [N] [file]
```

## Play using interactive app
Requires [raylib](https://github.com/raysan5/raylib) pointed to by
`RAYLIB_PATH`.
Starts the interactive app with the puzzle in `file`.
- `file` defaults to `out.csv`
```bash
uiua app.ua [file]
```
In the app, left/right click on squares to cycle between eliminated
(`-`) and tree (`T`). Press space to reroll the colorscheme.

## Generate an image
Outputs an image of the puzzle in `file` to the terminal.
- `file` defaults to `out.csv`
```bash
uiua img.ua [file]
```
