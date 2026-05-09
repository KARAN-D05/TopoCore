# Sign Classification - Peirce's Three Types

## Peirce's Three Sign Types

**Icon** - directly resembles what it wants to convey.
Example: Image of fire. You recognize fire because the image looks like fire.

**Index** - represents something related to or caused by what it wants to convey.
Example: Smoke represents fire. Prometheus represents fire through causal and
mythological connection. The sign exists because of a real relationship with
what it points to.

**Symbol** - agreed upon by society to mean something real. No natural connection
between the sign and its meaning. Pure convention.
Example: The word fire. Nothing about those four letters resembles or causally
connects to combustion. English speakers agreed on that mapping.

## Most Real Signs Are Hybrids

Pure icons, pure indices, and pure symbols are theoretical extremes.
In reality causality, resemblance, and convention interact - most signs
mix all three types in different proportions.

## Classification of Befunge Direction Commands

### Iconic Commands

`>` `<` `^` `v` are iconic. They directly resemble what they convey - direction.
You do not need a convention to understand that `>` points right or `^` points up.
The shape carries the meaning naturally.

### Hybrid Commands

`|` and `_` are hybrid signs.

**Iconic dimension** - `|` is a vertical line representing vertical movement.
`_` is a horizontal line representing horizontal movement. The shape partially
conveys the axis of direction without any convention required.

**Symbolic dimension** - the conditional logic is not encoded in the shape at all.
The zero check, the stack pop, the branching decision, none of that is visible
in a vertical or horizontal line. That part is pure convention.

**Indexical dimension** - the outcome of the branch is causally related to the
stack value. The direction the cursor takes is a consequence of the condition.
So the resulting direction indexes the stack state that caused it.

## Design Implication For Topocore

The Befunge instruction set mixes iconic and symbolic signs arbitrarily - ASCII
characters chosen for convenience, not for meaning. 

> The goal: a program that is partially readable from shape alone.
