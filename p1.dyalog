p←⍎¨⊃⎕NGET'p1.txt'1
+/¯2+⌊p÷3 ⍝ part 1
+/p{0=⌈/⍺:⍵ ⋄ t←0⌈¯2+⌊⍺÷3 ⋄ t∇t+⍵}0 ⍝ part 2
