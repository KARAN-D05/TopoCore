# Spatial Semantics - Why TopoCore is Semasiographic

## The Criticism
2D CPU initially looks like a more complicared way of organizing logical linearity of computation.

```
Computation is sequential at its core so logical linearity always stays. What differs is how we encode that linearity.
```

Normal CPU:
The logical linearity is encoded in address order. Geometry of memory is irrelevant.
If we want to compute A then B then C, the logical linearity of the program must be
consistent with the address linearity. A must be stored at address x, B at x+1, C at x+2.
The position of memory cells in space does not affect the execution order. Cell x and x+1
can be spatially distant but as they are linear with respect to address they execute in order.
So meaning lives in arbitrary numeric adresses not space.

Topocore:
The logical linearity is encoded in space itself. if we want to execute A then B then C, they must
be spatially placed in that order. The logical linearity must be consistent with topology. Change in
position of cell changes the execution order. So meaning lives in space itself not arbitrary address.

## The Semasiographic Conclusion
Semasiography means meaning is encoded in spatial arrangement rather than arbitrary symbols.
Normal CPU programs are not semasiographic, their visual layout is a representation
artifact, not a semantic one. The geometry is incidental.
Topocore programs are semasiographic, their geometry is constitutive.
You cannot separate meaning from spatial arrangement.
The program is the layout. The layout is the program.

## The Deeper Point
This is not merely a more difficult way of organizing logical linearity.
It is a fundamentally different relationship between meaning and space.
In normal CPUs space serves computation.
**In Topocore space is computation.**
