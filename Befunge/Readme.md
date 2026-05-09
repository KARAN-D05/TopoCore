# Befunge

Befunge is a Turing-complete 2D programming language created by Chris Pressey in 1993.
It is the direct inspiration for Topocore's spatial execution engine.
Unlike Brainfuck's linear tape, Befunge programs live on a 2D grid where
the cursor can move in any direction making execution path a function of space.

## The World

A grid of 80 columns and 25 rows.
Every cell holds one character, an instruction, a digit, or empty space.
The cursor starts at (0,0),top left, moving right.

```
(0,0) → → → → → → → x
↓
↓
↓
y
```

Position is always expressed as (column, row) = (x, y).
x increases moving right. y increases moving down.

## The Stack

Befunge uses a stack for memory, not a tape.
All operations push to or pop from the stack.

```
push 3 → [ 3 ]
push 5 → [ 5 ][ 3 ]
pop    → gives 5, stack becomes [ 3 ]
pop    → gives 3, stack becomes empty
```

Last in, first out. No named locations. No pointer.

## The Cursor

The cursor has two properties, position (x,y) and direction.
It starts at (0,0) moving right.
Direction changes only when the cursor lands on a direction command.
All instructions must lie on the path the cursor actually travels.

## Commands

### Digits
| Command | Action |
|---------|--------|
| `0`-`9` | Push that digit onto the stack |

### Arithmetic
| Command | Action |
|---------|--------|
| `+` | Pop two values, push their sum |
| `-` | Pop two values, push their difference |
| `*` | Pop two values, push their product |
| `/` | Pop two values, push their quotient |

### Output
| Command | Action |
|---------|--------|
| `.` | Pop top of stack, print as number |
| `,` | Pop top of stack, print as ASCII character |

### Control
| Command | Action |
|---------|--------|
| `@` | End the program |
| `#` | Skip next cell (trampoline) |

### Direction
| Command | Action |
|---------|--------|
| `>` | Cursor moves right |
| `<` | Cursor moves left |
| `^` | Cursor moves up |
| `v` | Cursor moves down |
| `?` | Cursor moves in a random direction |

### Conditional Direction
| Command | Action |
|---------|--------|
| `_` | Pop stack - go right if popped value is 0, go left if nonzero |
| `\|` | Pop stack - go down if popped value is 0, go up if nonzero |

### String Mode
| Command | Action |
|---------|--------|
| `"` | Toggle string mode on/off - pushes ASCII values of characters passed over |

### Stack Manipulation
| Command | Action |
|---------|--------|
| `:` | Duplicate top of stack |
| `\` | Swap top two values |
| `$` | Pop and discard top value |
| `!` | Logical NOT - 0 becomes 1, nonzero becomes 0 |
| `` ` `` | Greater than - push 1 if second > top, else push 0 |

## Core Spatial Thinking Rule

> The cursor travels in one direction until something changes it.
> All instructions must lie on the path the cursor actually travels.

This is the fundamental difference from Brainfuck.
In Brainfuck the execution path is always left to right.
In Befunge the execution path is determined by the spatial layout of the program.

## Fetch Decode Execute in Befunge

**Fetch** - read character at current (x,y) position

**Decode** - identify what command it is

**Execute** - carry out the operation

**Advance** - move cursor one step in current direction

The program counter is now three values - x, y, direction.
This is the direct hardware model for Topocore's execution engine.

## Edge Behaviour
The grid is toroidal - edges wrap around.

Left edge → wraps to right edge of same row
Right edge → wraps to left edge of same row
Top edge → wraps to bottom edge of same column
Bottom edge → wraps to top edge of same column

> Befunge's execution model is the direct blueprint for Topocore's RTL architecture.
