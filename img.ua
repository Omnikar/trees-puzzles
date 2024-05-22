MkImg ← (
  # Make colors
  ⊃⊏⧻-1:∵⋅⚂↯⊟,3⧻.
  ⍜⊙⍉▽⟜▽ 40
  # Add borders
  ⬚0(↙+)1_1△.
  =0◿⊙.:⇡⊙⌊⊙÷⟜:⧻⟜:
  ↧¬⬚0↥⍉.°⊚/⊂⊞⊟▽⊙.
)

&fras ⍣⊡"out.csv"1&args
MkImg⋕°csv▽⍜⇌\×¬⦷"\n\n".
⍣(&fwa⊡2&args&ime"png")&ims
