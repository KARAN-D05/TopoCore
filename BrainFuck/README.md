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

| 32 | SPACE | 33 | ! | 34 | " | 35 | # | 36 | $ | 37 | % | 38 | & | 39 | ' |
|----|-------|----|---|----|---|----|---|----|---|----|---|----|---|----|---|
| 40 | ( | 41 | ) | 42 | * | 43 | + | 44 | , | 45 | - | 46 | . | 47 | / |
| 48 | 0 | 49 | 1 | 50 | 2 | 51 | 3 | 52 | 4 | 53 | 5 | 54 | 6 | 55 | 7 |
| 56 | 8 | 57 | 9 | 58 | : | 59 | ; | 60 | < | 61 | = | 62 | > | 63 | ? |
| 64 | @ | 65 | A | 66 | B | 67 | C | 68 | D | 69 | E | 70 | F | 71 | G |
| 72 | H | 73 | I | 74 | J | 75 | K | 76 | L | 77 | M | 78 | N | 79 | O |
| 80 | P | 81 | Q | 82 | R | 83 | S | 84 | T | 85 | U | 86 | V | 87 | W |
| 88 | X | 89 | Y | 90 | Z | 91 | [ | 92 | \ | 93 | ] | 94 | ^ | 95 | _ |
| 96 | ` | 97 | a | 98 | b | 99 | c | 100 | d | 101 | e | 102 | f | 103 | g |
| 104 | h | 105 | i | 106 | j | 107 | k | 108 | l | 109 | m | 110 | n | 111 | o |
| 112 | p | 113 | q | 114 | r | 115 | s | 116 | t | 117 | u | 118 | v | 119 | w |
| 120 | x | 121 | y | 122 | z | 123 | { | 124 | \| | 125 | } | 126 | ~ | 127 | DEL |
