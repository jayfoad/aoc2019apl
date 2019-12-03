p←'\w+'⎕S'&'¨⊃⎕NGET'p3.txt'1
c←⊃∩/a b←{+\⊃,/{(⍎1↓⍵)/0J1*'ULDR'⍳⊃⍵}¨⍵}¨p
⌊/+⌿|9 11∘.○c ⍝ part 1
⌊/(a⍳c)+b⍳c ⍝ part 2
