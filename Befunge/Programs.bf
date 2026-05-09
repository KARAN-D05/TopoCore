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


; Prints E if numbers are equal else prints N
; Grid:
; (0,0)=9 (1,0)=9 (2,0)=- (3,0)=v
;                 (2,1)=v (3,1)=_ (4,1)=" (5,1)=E (6,1)=" (7,1)=, (8,1)=@
;                 (2,2)="
;                 (2,3)=N
;                 (2,4)="
;                 (2,5)=,
;                 (2,2)=@

 99-v
   v_"E",@
   "
   N
   "
   ,
   @


; Prints Karan
; The reverse order gives correct printing order
; K is pushed last but popped first, then a then r then a and then n
; Grid:
; (0,0)=" (1,0)=n (2,0)=a (3,0)=r (4,0)=a (5,0)=K (6,0)=" (7,0)=, (8,0)=, (9,0)=, (10,0)=, (11,0)=, (12,0)=@

"naraK",,,,,@
