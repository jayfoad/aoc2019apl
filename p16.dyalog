p←⍎¨⊃⊃⎕NGET'p16.txt'1
fft←{10||(⍳≢⍵){⍵+.×1↓(1+≢⍵)⍴⍺/0 1 0 ¯1}¨⊂⍵}
∊⍕¨8↑fft⍣100⊢p ⍝ part 1