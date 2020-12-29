⎕IO←0
p←⍎¨'[^,]+'⎕S'&'⊃⊃⎕NGET'p5.txt'1
mode←{⍺:⍵ ⋄ a[⍵]}
alu←{p q←(2↑⍺)mode¨2↑p q r←a[⍵+1 2 3] ⋄ a[r]←p ⍺⍺ q ⋄ ⍵+4}
ops←⎕NS¨9/⊂⍬ ⋄ ops[1].f←+#.alu ⋄ ops[2].f←×#.alu
ops[3].f←#.{a[a[⍵+1]]←in ⋄ ⍵+2} ⋄ ops[4].f←#.{out∘←(⊃⍺)mode a[⍵+1] ⋄ ⍵+2}
run←{99=op←a[⍵]: ⋄ ∇(2↓⌽10⊥⍣¯1⊢op)(ops[100|op].f)⍵}
in←1 ⋄ a←p ⋄ run 0 ⋄ out ⍝ part 1
jmp←{p q←(2↑⍺)mode¨a[⍵+1 2] ⋄ 0 ⍺⍺ p:q ⋄ ⍵+3}
ops[5].f←≠#.jmp ⋄ ops[6].f←=#.jmp
ops[7].f←<#.alu ⋄ ops[8].f←=#.alu
in←5 ⋄ a←p ⋄ run 0 ⋄ out ⍝ part 2
