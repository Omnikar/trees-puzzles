# Random choice
RC ← ⊡⌊×⚂⧻.
# Balanced random choice
BRC ← RC▽=RC◴.≡(⊢⇌).
Perms ← |1 ⟨¤[]◌|°¤⊢⊞⍜⊙↻⊂⊙⊓⇡Perms,⊙-,1⟩±.
NKings ← memo(▽≡/×≠1⌵≡(≡/-◫)2.Perms)
Adjs ← ⊂¯.⊟⇌.0_1

# Raw progress bar
RPB ← ⊂▽:@█:⊡⌊×⧻⟜:"▏▎▍▌▋▊▉":⟜-⌊.×
# Surrounded progress bar
PB ← $"[_]"⬚@\s↙⟜RPB

GenSol ← ⬚0≡°⊚ RC NKings
EncSol ← ⊂⊂:@-∩°⋕⧻⟜⊗°¤≡⊚⊙NKings⟜⧻
LabelSol ← ⍜⊚(▽+1⇡⧻.)
Solve ← (
  ≡⬚0≡°⊚NKings⧻.
  ⊚≡/×=1≡⊕/+¤-1:
)
Solvable ← =1⧻Solve
GrowPuz ← (
  RC.⊚±.
  ⊙⊙:⊃⊙⧻⊡⊙,
  ⊙.:+Adjs¤
  ▽≡/××⊓≥<0,
  ▽¬∊⟜:
  ⍜⊡◌⊙:RC
)
PreGrow ← (
  =⟜:+1⇡⧻⟜¤
  /↥×≡GrowPuz
)
# More balanced region growth choices
AltGrowPuz ← (
  ⊚±.
  RC⊚=⌈×⚂⧻.,
  ⊙⊙:⊃⊙⧻⊡⊙,
  ⊙.:+Adjs¤
  ▽≡/××⊓≥<0,
  ▽¬∊⟜:
  ⍜⊡◌⊙:RC
  ⍤"not solvable"Solvable.
)
# Optimized solvability checking
AltAltGrowPuz ← (
  ⊚±.
  RC⊚=⌈×⚂⧻.,
  ⊙⊙:⊃⊙⧻⊡⊙,
  ⊙.:+Adjs¤
  ▽≡/××⊓≥<0,
  ▽¬∊⟜:
  ⍜⊡◌⊙:RC
  ¤-1,,
  ≡⊕/+
  =1/+≡/×=1.
  ⍤"not solvable"
  ⊙▽:≡/×≠2
  &pf$"\x1b[2K\rsearch size: _"⧻,
)
# Optimized solvability checking and targeted growth
AAAGrowPuz ← (
  +1⇡⧻⟜¤.
  /◇⊂⍚(≡⊟≡□°¤⊞+Adjs⊚=⊃⊙∘□)
  ▽≡◇/××⊓≤>,0≡⊢,⧻,◴
  ▽¬±⊡≡°□≡⊢,,

  &pf "\rs1"

  ⊃⋅⊙⟜∘⊙⊙∘
  ▽¬≡/×≡⊕/+¤-1
  .[]:⊏⍏∵⋅⚂.
  ⍣(
    ⍤"oopsie daisy"⁅⚂
    ⍢(
      :⊙:⊙⊙,⊙:°⊂:◌◌
      ⊃(+1⊚=1⊕/+-1|⊚×¬±)
    | ¬±⧻◌
    )
  )⊙⊙⊙⊙∘

  &pf "\rs2"

  :⊙(:°⊟⍉,)∩¤
  ×∩≡◇∊
  ⍣(BRC⊙◌▽)⋅BRC
  ⍜⊡◌⊙:°{⊙∘}

  &pf "\rs3"

  ¤-1,,
  ≡⊕/+
  =1/+≡/×=1.
  ⍤"not solvable"
  ⊙▽:≡/×≠2
  &pf$"\x1b[2K\r   search size: _"⧻,
)
# GenPuz ← ⍢⍣GrowPuz∘(=0/↧♭)
GenPuz ← ⍢⍣AltAltGrowPuz∘(=0/↧♭)

# Rudimentary "try again until something works"
GenSolvable ← (
  # 5 # Puzzle size
  GenSol
  # &p EncSol.
  # ⟜EncSol
  ⟜(⊗°¤≡⊚⊙NKings⟜⧻)
  LabelSol
  :1 # Attempt counter
  &p "" ⊙◌⍢(GenPuz.⊙+:1◌|¬&pf$"\rCheck took _"⍜nowSolvable) GenPuz.
  ⊙(&p $"_ attempts")
)

# Recursive superposition-collapse exhaustive search with
# optimized solvability and contiguous adjacency checking
IncGenPuzRec ↚ |3.3 (
  # ∵◇⊢×=1∵◇⧻..
  # &pf $"\x1b[2K\runfilled: _" /+♭=0.
  # ⍤"not solvable"Solvable

  # Accessibility check
  °□∧⍜⊙◇⊡(⍚▽≠,)⟜⍚(
    ↥0-⊓≠×1:2∵◇⊃⧻/↥=
    ⊚=1⍜⊜□⍚(∵⋅∘⟜/↥)±.
  )+1⇡⧻⟜¤.
  ⍤"unreachable region"/×±♭∵◇⧻.

  ⟜(
    ∵◇⊢×=1∵◇⧻.

    # Contiguousness check
    =∩⧻,⊜⊢..
    ⍤"not contiguous"

    # &pf $"\x1b[2K\runfilled: _" /+♭=0.
    # &pf $"\x1b[2K\rsearch size: _" ⧻,
    ≡⊕/+¤-1⊙.
    =1/+≡/×=1.
    ⍤"not solvable"

    ▽≡/×<2
  )

  # ∵◇⊢×=1∵◇⧻..
  # &p&pf$"\x1b[_A\r\x1b[J"+5⧻.

  ∵◇⧻.

  ∵◇⊢×=1,,
  &p&pf$"\x1b[_A\r\x1b[J"+5⧻.

  # &p.&pf$"\x1b[_A\r\x1b[J"+5⧻.
  .
  ⊙.××-1..:/+♭⟜⧻-1
  &p $"\x1b[2K\r_" PB 20 ×.¬÷
  &p $"\x1b[2K\runcertainty: _"
  &p $"\x1b[2K\rsearch size: _" ⧻:⊙,
  # ∵◇⊢×=1∵◇⧻.,
  # &p $"\x1b[2K\runfilled: _" /+♭=0
  &pf $"\x1b[2K\rrecursion depth: _" :⊙:⊙⊙⊃:⋅(+1)
  # &p $"search size: _" ⧻:⊙,
  # &p $"recursion depth: _" :⊙:⊙⊙⊃:⋅(+1)
  ¬/×♭=1
  ⍥(
    ∵≍⍚¤+1⇡⧻⟜¤.
    ⍚(◴°¤≡(+Adjs¤)⊚)
    ⍚(▽≡/×)×⊓≤>,0,⧻,
    :>1⍚≡◇⧻.⍚⊡,¤,
    ⍚▽×⍚≡◇∊+1⇡⧻.
    ∩▽,+1⇡⧻.±≡◇⧻.
    ∩⊡⟜:⌊×⚂⧻.
    ⊙◇RC
    ⍣(
      IncGenPuzRec⍜⊡◌⊙::□¤
    | IncGenPuzRec⍜⊙⊡(□▽≠⊙◇.)
    )
  )
)

IncGenPuz ← (
  :¤¤+1⇡⧻.
  ≡⍚⟨⋅∘|¤⟩±.
  :≡⬚0≡°⊚NKings⧻.
  &p∵⋅0.
  &p▽2@\n
  ⊙⊙0
  IncGenPuzRec
  &p""
  ∵◇⊢⊙∩◌
)
