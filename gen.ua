~ "lib"
  ~ AAAGrowPuz AltGrowPuz IncGenPuz LabelSol NKings
  ~ AltAltGrowPuz GenPuz GenSol
  ~ GenSolvable PreGrow RC Solvable

⍣(⋕⊡1)5&args
# GenSolvable
# GenSol
# ⬚0≡°⊚⊡ 507 NKings
# 1
# ⍢⍣(
#   ◌
#   GenSol
#   ⟜(&p. ⊗°¤≡⊚⊙NKings⟜⧻)
#   LabelSol
#   ⍢AltGrowPuz(=0/↧♭)
#   0
# )⊙∘∘
# IncGenPuz

GenSol
⟜(⊗°¤≡⊚⊙NKings⟜⧻)
LabelSol

&p "pregrowing"
PreGrow.
⊙◌⍢(PreGrow.◌|¬Solvable)
&p "starting"

# ⍤"pregrow not solvable" Solvable.

# :≡⬚0≡°⊚NKings⧻.
# ⍢⍣AltAltGrowPuz⊙∘(=0/↧♭)
# ⍢⍣AAAGrowPuz⊙∘(=0/↧♭)
# ⊙◌

IncGenPuz

⊂⊂:"\n\n":⊓csv°⋕
&fwa ⍣⊡"out.csv"2&args
