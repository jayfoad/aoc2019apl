to←{IO←0 ⋄ ⍺+⍳1+⍵-⍺}
p q←⍎¨'\d+'⎕S'&'⊃⊃⎕NGET'p4.txt'1
m←⍉10⊥⍣¯1⊢p to q
+/({∧/2≤/⍵}∧{∨/2=/⍵})m ⍝ part 1
+/({∧/2≤/⍵}∧{∨/(2=/⍵)>2∨/0,0,⍨2∧/2=/⍵})m ⍝ part 2