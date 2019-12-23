⎕IO←0
p←⊃⎕NGET'p22.txt'1
cut←{a[]←⍵⌽a}
deal←with←into←stack←0
new←{a[]←⌽a}
increment←{a[(≢a)|⍵×⍳≢a]←a}
a←⍳10007 ⋄ ⍎¨p ⋄ a⍳2019 ⍝ part 1
