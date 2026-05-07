# TopoCore

> A spatial execution architecture where computation emerges from movement through symbolic space.

## ⚙️ Implementation Stack
![Brainfuck](https://img.shields.io/badge/Brainfuck-FF6F00?style=for-the-badge&logoColor=black)
![Befunge](https://img.shields.io/badge/Befunge-7C4DFF?style=for-the-badge&logoColor=white)

## What is TopoCore?

TopoCore is an experimental hardware architecture inspired by two-dimensional programming languages such as Befunge.

Unlike traditional CPUs that execute instructions linearly using a single program counter, TopoCore executes programs arranged in a 2D grid using:

- X position
- Y position
- Direction of traversal

Execution is no longer a straight line.  
Programs are treated as symbolic spaces through which computation moves.

## Why?

Modern processors follow a fundamentally linear execution model:

```text
PC -> fetch -> decode -> execute -> PC + 1
```

TopoCore explores an alternative model where computation depends on spatial traversal itself:

```text
(X, Y, Direction) -> fetch -> interpret -> move
```

This changes the architecture fundamentally:

- the program counter becomes spatial,
- instruction fetch becomes 2D,
- control flow becomes directional,
- and execution depends on geometry and movement through symbolic space.

The project explores:

- non-linear execution,
- spatial computation,
- symbolic systems,
- and unconventional hardware architecture.

## Goals

- Learn minimal computation through Brainfuck
- Study spatial execution through Befunge
- Build a software interpreter
- Implement a Verilog-based execution engine
- Design a direction-aware control architecture
- Explore symbolic and spatial computation systems

> Teaching a machine to read meaning from space.
