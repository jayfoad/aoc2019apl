⎕io←0
p←⍎⊃⊃⎕NGET'p2.txt'1
f←{a b c d←4↑⍺↓w←⍵ ⋄ a=99:w ⋄ w[d]←⊃a⌽(×/,+/)w[b c] ⋄ (⍺+4)∇ w}
g←{⊃0 f ⍵@1 2⊢p}
g 12 2 ⍝ part 1
a b←(g 0 0)(g 1 0)
0 100⊥0(b-a)⊤19690720-a ⍝ part 2
