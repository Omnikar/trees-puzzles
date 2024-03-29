# Experimental!
~ "lib" ~ NKings
R ~ "git: uiua-lang/rayua"

# Warn log level
◌R~Rl {"void" "SetTraceLogLevel" "int"} {4}

Size ← 400

&fras ⍣⊡"out.csv"1&args
∩⋕°{⊙csv}⊜□¬⦷"\n\n".
⊙(:≡⊂⌊:⟜×255∵⋅⚂↯⊟,3⧻.)
+1⬚0≡°⊚⊡⊙(NKings⧻.)

⟜(map "sol"_"puz"_"col" {⊙⊙∘})
⟜(insert "cur" ×0)
⟜(insert "siz")⧻
insert "scf" ⌊÷:Size

DrawPuz ← (
  ⇡⧻,⌊÷⧻,Size⊏-1⍉
  ⊞⊂.+1:¤¤-1⊟.⟜×:
  ≡≡R~DrawRectangle
)
DrawRelRects ← (
  ⊙⊙[[..0 255]]⍜{⊙∘}×+¤:⊙:
  ≡R~DrawRectangle∩≡⇌
)
DrawT ← DrawRelRects [0.2_0.2 0.2_0.425] [0.15_0.6 0.6_0.15]
DrawDash ← DrawRelRects [0.4125_0.325] [0.125_0.35]

R~InitWindow :"puzzle" ⊟.+1-⊸◿:Size⧻.
R~SetTargetFPS 30
⍢(
  ∩°□∩get"scf","siz".
  ⌊÷:⇌R~GetMousePosition          # Mouse grid coord
  /××⊓≤>,0⟜:                      # Bounds check
  /++1▽≡R~IsMouseButtonPressed.⇡2 # Click check
  ×±⟜:                            # Combine bounds and click
  ⟨◌◌|⍜(◇⊡⊙(get"cur")|◿3+)⊙::⟩

  R~IsKeyPressed @\s
  ⍥⍜(↙3⍉°□get"col"|⌊×255∵⋅⚂)

  R~BeginDrawing

  R~ClearBackground [...0]

  ◇DrawPuz ∩get"puz","col".

  ∩get"cur","scf".
  ≡DrawDash ◇⊚=1,,
  ≡DrawT ◇⊚=2

  ≍∩=⟜:2∩get"cur","sol".
  ⍥(R~DrawText "you won!" 30_30 40 [...255])

  R~EndDrawing
| ¬R~WindowShouldClose
)
◌
R~CloseWindow
