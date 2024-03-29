Upscale ← °⍉▽▽⧻⟜:⍉▽▽⧻,⟜: 40
MkImg ← (
  # Make colors
  ⊃⊏⧻-1:∵⋅⚂↯⊟,3⧻.
  Upscale
  # Add borders
  ⬚0_0_0⍜⊙≡≡□↙+1↙2△.
  =0◿⊙.:⇡⊙⌊⊙÷⟜:⧻⟜:
  ↧¬⬚0↥⍉.°⊚°¤⊞⊟▽⊙.
)

&fras ⍣⊡"out.csv"1&args
⋕°csv▽⍜⇌\×¬⦷"\n\n".
&ims MkImg
