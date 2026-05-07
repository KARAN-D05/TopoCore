# Brainfuck
- Brainfuck is a Turing-complete language with only 8 commands.
- It is the foundation of Topocore, understanding minimal computation before building a hardware execution engine for 2D spatial programs.

## The World
- A tape of cells, all starting at 0.
- A pointer sitting under one cell at a time.
- All operations happen on the current cell only.

┌───┬───┬───┬───┬───┐
│ 0 │ 0 │ 0 │ 0 │ 0 │ ...
└───┴───┴───┴───┴───┘
^
pointer starts here

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
