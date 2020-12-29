⎕IO←0
p←⍎¨'[^,]+'⎕S'&'⊃⊃⎕NGET'p9.txt'1
ops←⎕NS¨10/⊂⍬
ld←{1=⍺:⍵ ⋄ a[⍵+rb×2=⍺]}
st←{⍵+rb×2=⍺}
alu←{p q←(2↑⍺)ld¨2↑p q r←a[⍵+1 2 3] ⋄ a[(⊃⌽3↑⍺)st r]←p ⍺⍺ q ⋄ ⍵+4}
ops[1].f←+#.alu ⋄ ops[2].f←×#.alu
ops[3].f←#.{a[(⊃⍺)st a[⍵+1]]←⊃in ⋄ in↓⍨←1 ⋄ ⍵+2}
ops[4].f←#.{out,←(⊃⍺)ld a[⍵+1] ⋄ ⍵+2}
jmp←{p q←(2↑⍺)ld¨a[⍵+1 2] ⋄ 0 ⍺⍺ p:q ⋄ ⍵+3}
ops[5].f←≠#.jmp ⋄ ops[6].f←=#.jmp
ops[7].f←<#.alu ⋄ ops[8].f←=#.alu
ops[9].f←#.{rb+←(⊃⍺)ld a[⍵+1] ⋄ ⍵+2}
run←{a∘←10000↑p ⋄ in∘←⍵ ⋄ out∘←⍬ ⋄ rb∘←0 ⋄ {99=op←a[⍵]:out ⋄ ∇(2↓⌽10⊥⍣¯1⊢op)(ops[100|op].f)⍵}0}
run 1 ⍝ part 1
run 2 ⍝ part 2
