~ "lib" ~ NKings Solve

⍣°⊂(□."")↘1&args
⊗:{"solve" "decode" "cache"}
⟨
  ⋕°csv&fras⊢
  Solve⟜⧻
  ⍤$"multiple solutions: _"/$"_, _",=1⧻.
  &p $"_-_":⊢
| °$"_-_"⊢
  ⬚0≡°⊚⊡:NKings∩⋕
  ↥÷5◿2⊞+.⇡⧻.
  ⍜⊙⍉▽⟜▽ 40
  &ims
| ⟜⊂⟜(°⋯⬚0↯∞_8⋯♭NKings)⋕⊢
  &fwa $"cache/_"
| &p $ solve <file> - solve a puzzle supplied by a csv file
     $ decode <sol> - output a human-readable image form of a
     $                solution number outputted by `solve`
     $    cache <n> - generate a cache of `NKings n`
     $                (requires a `cache` directory)
⟩
