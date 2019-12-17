p q←↓⍉↑{(⍎¨'\d+'⎕S'&'⊢⍵)('[A-Z]+'⎕S'&'⊢⍵)}¨⊃⎕NGET'p14.txt' 1
c←(⊃∘⌽¨q),⊂'ORE' ⍝ chemicals
a←↑p{(¯1↓⍺)@(c⍳¯1↓⍵)⊢0/⍨≢c}¨q ⍝ reaction inputs
b←⊃∘⌽¨p ⍝ reaction outputs
f←{∧/0≥j←¯1↓⍵:⊃⌽⍵ ⋄ ∇⍵+(k+.×a)-0,⍨b×k←⌈j÷b}{⍵@(c⍳⊂'FUEL')⊢0/⍨≢c}
f 1 ⍝ part 1
{u v←⍵ ⋄ 1E12>f v:∇u(v+v) ⋄ u≡m←⌊0.5×u+v:m ⋄ ∇2↑(1E12>f m)↓u m v}1 ⍝ part 2
