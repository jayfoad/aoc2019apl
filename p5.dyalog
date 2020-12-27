⎕IO←0                                                                                                                        
p←⍎⊃⊃⎕NGET'p5.txt'1
f←{⍺:⍵ ⋄ 'p[',⍵,']'}∘⍕ ⍝ format an argument
f12←{a←⊃⍵ ⋄ b c d←(⌽3↑a⊤⍨5/10)arg¨1↓⍵ ⋄ 'a[',d,']←a[',b,']',(a⊃'.+×'),'a[',c,']'}
f34←{a←⊃⍵ ⋄ b←(⊃a⊤⍨3/10)arg ⊃⌽⍵ ⋄ }
q←{⍺∊1 2:d,'←',b,(⍺⊃'.+×'),c⊣b c d←⍵ ⋄ ⍺=3:(⊃⍵),'←i' ⋄ ⍺=4:'o,←',⊃⍵ ⋄ ':return'}
g←{⍺←⊂'o←h(p i)' ⋄ ⍬≡⍵:⍺ ⋄ n←0 3 3 1 1⊃⍨99|a←⊃⍵ ⋄ (⍺,⊂a q(⌽n↑a⊤⍨10/⍨2+n)f¨n↑1↓⍵)∇⍵↓⍨1+n} ⍝ generate function
⎕FX g p
⊃h 12 2@1 2⊢p
