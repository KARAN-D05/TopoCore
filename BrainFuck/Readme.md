# Module 0 - Fetch Decode Execute

## The Core Cycle
A program is a sequence of instructions stored in memory.
The computer does three things repeatedly:

1. **Fetch** - read instruction at current address
2. **Decode** - determine what it means
3. **Execute** - carry it out

Then move to next instruction and repeat.

## Program Counter
A special register that holds the address of the next instruction to fetch.
Automatically increments after each fetch.
Branching = forcibly changing the PC to point elsewhere.

## Normal CPU vs Topocore
| | Normal CPU | Topocore |
|---|---|---|
| PC | One register - one address | Three registers - CX, CY, DIR |
| Execution path | Linear, 1D | Spatial, 2D |
| Branching | Jump to address | Change direction on grid |

## Key Insight
Everything reduces to fetch-decode-execute at the bottom.
Topocore is the same cycle, but the program counter moves through 2D space.
