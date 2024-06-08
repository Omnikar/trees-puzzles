# Random choice
RC ← ⊡⌊×⚂⧻.
# Permutations
Perms ← ☇1⍉∧(≡↻⇡⟜↯+1⟜⊂)↘1⇡:¤¤0
LoadNKings ↚ ↯⊟∞:°⋯↯⊟∞⧻∩⋯⟜:°⊂&frab$"cache/_"
NKingsImpl ↚ ▽≡/×≠1⌵≡(≡/-◫)2.Perms
# Number of ways to arrange N non attacking kings
# on an NxN board with 1 per row and 1 per column
NKings ← memo⍣LoadNKings NKingsImpl
Adjs ← ⊂¯.⊟⇌.0_1

RawProgressBar ← ⊂▽:@█:⊡⌊×⧻⟜:"▏▎▍▌▋▊▉":⟜-⌊.×
ProgressBar ← $"[_]"⬚@\s↙⟜RawProgressBar

GenSol ← ⬚0≡°⊚ RC NKings
LabelSol ← ⍜⊚(▽+1⇡⧻.)
Solve ← ⊚/×=1↘1⍉⬚0≡°⊚⍜⍉≡⊏NKings⧻.
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

# Recursive superposition-collapse exhaustive search with
# optimized solvability and contiguous adjacency checking
IncGenPuzRec ↚ |3.3 (
  # Accessibility check
  °□∧⍜⊙◇⊡(⍚▽≠,)⟜⍚(
    ↥0-⊓≠×1:2∵◇⊃⧻/↥=
    ⊚=1⍜⊜□⍚(∵⋅∘⟜/↥)±.
  )+1⇡⧻⟜¤.
  ⍤"unreachable cell"/×±♭∵◇⧻.

  ⟜(
    ∵◇⊢×=1∵◇⧻.

    # Contiguousness check
    =∩⧻,⊜⊢..
    ⍤"not contiguous"

    # Solvability check and filtering
    ⬚0≡°⊚⍜⍉≡⊏⊏:NKings⧻,,
    =1/+∩/×⊓=<1,2↘1⍉
    ▽⍤"not solvable"
  )

  ∵◇⧻.

  &p.&pf$"\x1b[_A\r\x1b[J"+5⧻.
  ⊙.××-1..:/+♭⟜⧻-1.
  &p $"\x1b[2K\r_" ProgressBar 20 ×.¬÷
  &p $"\x1b[2K\runcertainty: _"
  &p $"\x1b[2K\rsearch size: _" ⧻:⊙,
  &pf $"\x1b[2K\rrecursion depth: _" :⊙:⊙⊙⊃:⋅(+1)

  ¬/×♭=1
  # Runs once iff the puzzle is incomplete
  ⍥(
    ∵≍⍚¤+1⇡⧻⟜¤.
    ⍚(◴/⊂≡(+Adjs¤)⊚)
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
  :⇡⧻NKings⧻.
  &p∵⋅0.
  &p▽2@\n
  ⊙⊙0
  IncGenPuzRec
  &p""
  ∵◇⊢⊙∩◌
)
