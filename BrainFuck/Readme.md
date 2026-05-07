# Brainfuck
- Brainfuck is a Turing-complete language with only 8 commands.
- It is the foundation of Topocore, understanding minimal computation before building a hardware execution engine for 2D spatial programs.

## The World
- A tape of cells, all starting at 0.
- A pointer sitting under one cell at a time.
- All operations happen on the current cell only.

```
┌───┬───┬───┬───┬───┐
│ 0 │ 0 │ 0 │ 0 │ 0 │ ...
└───┴───┴───┴───┴───┘
^
pointer starts here
```

## The 8 Commands

| Command | Action |
|---------|--------|
| `+` | Increment current cell by 1 |
| `-` | Decrement current cell by 1 |
| `>` | Move pointer one cell right |
| `<` | Move pointer one cell left |
| `.` | Print current cell as ASCII character |
| `,` | Read one ASCII character into current cell |
| `[` | If current cell is 0, jump forward to matching `]` |
| `]` | If current cell is not 0, jump back to matching `[` |

Everything else in the file is ignored and treated as a comment.

## Cell Behaviour

- Every cell starts at 0
- Cells hold values 0 to 255
- Overflow wraps: 255 + 1 = 0
- Underflow wraps: 0 - 1 = 255
- Tape is infinite to the right

## ASCII Chart

| Dec | Hex | Char | Description |
|-----|-----|------|-------------|
| 0   | 00  | NUL  | Null |
| 1   | 01  | SOH  | Start of Heading |
| 2   | 02  | STX  | Start of Text |
| 3   | 03  | ETX  | End of Text |
| 4   | 04  | EOT  | End of Transmission |
| 5   | 05  | ENQ  | Enquiry |
| 6   | 06  | ACK  | Acknowledge |
| 7   | 07  | BEL  | Bell |
| 8   | 08  | BS   | Backspace |
| 9   | 09  | TAB  | Horizontal Tab |
| 10  | 0A  | LF   | Line Feed |
| 11  | 0B  | VT   | Vertical Tab |
| 12  | 0C  | FF   | Form Feed |
| 13  | 0D  | CR   | Carriage Return |
| 14  | 0E  | SO   | Shift Out |
| 15  | 0F  | SI   | Shift In |
| 16  | 10  | DLE  | Data Link Escape |
| 17  | 11  | DC1  | Device Control 1 |
| 18  | 12  | DC2  | Device Control 2 |
| 19  | 13  | DC3  | Device Control 3 |
| 20  | 14  | DC4  | Device Control 4 |
| 21  | 15  | NAK  | Negative Acknowledge |
| 22  | 16  | SYN  | Synchronous Idle |
| 23  | 17  | ETB  | End of Transmission Block |
| 24  | 18  | CAN  | Cancel |
| 25  | 19  | EM   | End of Medium |
| 26  | 1A  | SUB  | Substitute |
| 27  | 1B  | ESC  | Escape |
| 28  | 1C  | FS   | File Separator |
| 29  | 1D  | GS   | Group Separator |
| 30  | 1E  | RS   | Record Separator |
| 31  | 1F  | US   | Unit Separator |
| 32  | 20  | SPACE| Space |
| 33  | 21  | !    | Exclamation Mark |
| 34  | 22  | "    | Double Quote |
| 35  | 23  | #    | Hash |
| 36  | 24  | $    | Dollar |
| 37  | 25  | %    | Percent |
| 38  | 26  | &    | Ampersand |
| 39  | 27  | '    | Apostrophe |
| 40  | 28  | (    | Left Parenthesis |
| 41  | 29  | )    | Right Parenthesis |
| 42  | 2A  | *    | Asterisk |
| 43  | 2B  | +    | Plus |
| 44  | 2C  | ,    | Comma |
| 45  | 2D  | -    | Hyphen |
| 46  | 2E  | .    | Period |
| 47  | 2F  | /    | Slash |
| 48  | 30  | 0    | Digit 0 |
| 49  | 31  | 1    | Digit 1 |
| 50  | 32  | 2    | Digit 2 |
| 51  | 33  | 3    | Digit 3 |
| 52  | 34  | 4    | Digit 4 |
| 53  | 35  | 5    | Digit 5 |
| 54  | 36  | 6    | Digit 6 |
| 55  | 37  | 7    | Digit 7 |
| 56  | 38  | 8    | Digit 8 |
| 57  | 39  | 9    | Digit 9 |
| 58  | 3A  | :    | Colon |
| 59  | 3B  | ;    | Semicolon |
| 60  | 3C  | <    | Less Than |
| 61  | 3D  | =    | Equals |
| 62  | 3E  | >    | Greater Than |
| 63  | 3F  | ?    | Question Mark |
| 64  | 40  | @    | At Symbol |
| 65  | 41  | A    | Capital A |
| 66  | 42  | B    | Capital B |
| 67  | 43  | C    | Capital C |
| 68  | 44  | D    | Capital D |
| 69  | 45  | E    | Capital E |
| 70  | 46  | F    | Capital F |
| 71  | 47  | G    | Capital G |
| 72  | 48  | H    | Capital H |
| 73  | 49  | I    | Capital I |
| 74  | 4A  | J    | Capital J |
| 75  | 4B  | K    | Capital K |
| 76  | 4C  | L    | Capital L |
| 77  | 4D  | M    | Capital M |
| 78  | 4E  | N    | Capital N |
| 79  | 4F  | O    | Capital O |
| 80  | 50  | P    | Capital P |
| 81  | 51  | Q    | Capital Q |
| 82  | 52  | R    | Capital R |
| 83  | 53  | S    | Capital S |
| 84  | 54  | T    | Capital T |
| 85  | 55  | U    | Capital U |
| 86  | 56  | V    | Capital V |
| 87  | 57  | W    | Capital W |
| 88  | 58  | X    | Capital X |
| 89  | 59  | Y    | Capital Y |
| 90  | 5A  | Z    | Capital Z |
| 91  | 5B  | [    | Left Bracket |
| 92  | 5C  | \    | Backslash |
| 93  | 5D  | ]    | Right Bracket |
| 94  | 5E  | ^    | Caret |
| 95  | 5F  | _    | Underscore |
| 96  | 60  | `    | Grave Accent |
| 97  | 61  | a    | Lowercase a |
| 98  | 62  | b    | Lowercase b |
| 99  | 63  | c    | Lowercase c |
| 100 | 64  | d    | Lowercase d |
| 101 | 65  | e    | Lowercase e |
| 102 | 66  | f    | Lowercase f |
| 103 | 67  | g    | Lowercase g |
| 104 | 68  | h    | Lowercase h |
| 105 | 69  | i    | Lowercase i |
| 106 | 6A  | j    | Lowercase j |
| 107 | 6B  | k    | Lowercase k |
| 108 | 6C  | l    | Lowercase l |
| 109 | 6D  | m    | Lowercase m |
| 110 | 6E  | n    | Lowercase n |
| 111 | 6F  | o    | Lowercase o |
| 112 | 70  | p    | Lowercase p |
| 113 | 71  | q    | Lowercase q |
| 114 | 72  | r    | Lowercase r |
| 115 | 73  | s    | Lowercase s |
| 116 | 74  | t    | Lowercase t |
| 117 | 75  | u    | Lowercase u |
| 118 | 76  | v    | Lowercase v |
| 119 | 77  | w    | Lowercase w |
| 120 | 78  | x    | Lowercase x |
| 121 | 79  | y    | Lowercase y |
| 122 | 7A  | z    | Lowercase z |
| 123 | 7B  | {    | Left Brace |
| 124 | 7C  | \|   | Vertical Bar |
| 125 | 7D  | }    | Right Brace |
| 126 | 7E  | ~    | Tilde |
| 127 | 7F  | DEL  | Delete |
