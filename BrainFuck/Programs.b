; ===== Brainfuck Programs =====
; Syntax: 8 commands only
; + increment  - decrement  > move right  < move left
; . print      , input      [ loop start  ] loop end
; Everything else is a comment


; ----- Print E (ASCII 69) -----
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.


; ----- Print K (ASCII 75) -----
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.


; ----- Print KD (two cells) -----
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.>++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++.


; ----- Print A five times (two cell loop) -----
; cell 0 = value (65), cell 1 = counter (5)
+++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++>+++++[<.>-]


; ----- Multiply 15x5 = 75, print K -----
; cell 0 = counter (15), cell 1 = accumulator
+++++++++++++++[>+++++<-]>.


; ----- Print K space D using multiplication -----
; K=75 (15x5), space=32 (8x4), D=68 (17x4)
+++++++++++++++[>+++++<-]>.>++++++++[>++++<-]>.>+++++++++++++++++[>++++<-]>.
