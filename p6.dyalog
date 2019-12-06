a b←↓⍉↑'\w+'⎕S'&'¨⊃⎕NGET'p6.txt'1
p←b⍳a ⍝ parent index
+/{0,⍨1+⍵[p]}⍣≡0/⍨1+≢a ⍝ part 1
{¯2+≢⍺(∪~∩)⍵}/{3::⍬ ⋄ ⍵,∇⍵⊃p}¨b⍳'SAN' 'YOU' ⍝ part 2
