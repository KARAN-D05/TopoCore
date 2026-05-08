; Print A (arithmetic)
; 8*8=64, 64+1=65, ASCII 65 = A
; Grid: single row
; Cursor path: right across row 0

88*1+,@


; Print A (string mode)
; " toggles string mode, pushes ASCII value of A = 65
; Cursor path: right across row 0

"A",@


; Print K (L-shaped path)
; Cursor goes right, turns down, turns right, prints K
; Grid:
; (0,0)=v 
; (1,1)=> (2,1)=" (3,1)=K (4,1)=" (5,1)=, (6,1)=@

v
>"K",@


;Print K (Z-shaped path)
; Cursor goes right, turns down, turns right, prints K
; Grid:
; (0,0)=> (1,0)=v
; (0,1)=> (1,1)=" (2,1)=K (3,1)=" (4,1)=, (5,1)=@

>v
 >"K",@
