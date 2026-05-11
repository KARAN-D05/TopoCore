# Spatial Semantics - Why TopoCore is Semasiographic

## Criticism 1
2D CPU initially looks like a more complicated way of organizing logical linearity of computation.

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

### The Semasiographic Conclusion
Semasiography means meaning is encoded in signs/spatial arrangement rather than arbitrary symbols.
Normal CPU programs are not semasiographic, their visual layout is a representation
artifact, not a semantic one. The geometry is incidental.
Topocore programs are semasiographic, their geometry is constitutive.
You cannot separate meaning from spatial arrangement.
The program is the layout. The layout is the program.

### The Deeper Point
This is not merely a more difficult way of organizing logical linearity.
It is a fundamentally different relationship between meaning and space.
In normal CPUs space serves computation.
**In Topocore space is computation.**

## Criticism 2
Is Topocore secretly address-based?

After the initial semasiographic argument a deeper concern emerged:

> "Is this really topology-based computation, or just a more complicated
> coordinate-indexed version of a normal CPU?"

Even in a 2D system logical causality still exists. Programs still execute
sequences like A → B → C. And hardware still needs some way to identify
positions internally. So if the hardware uses coordinates to access cells
then perhaps the system is secretly still address-based, meaning the
spatiality is only cosmetic.

This criticism identified a real architectural danger. A supposedly spatial
architecture could collapse into ordinary random-access computation
disguised as geometry. That is a legitimate concern.

### The Proposed Solution
The system remains genuinely topology-based if locality is enforced.

Execution can only move to neighboring cells. Arbitrary jumps are
impossible. Topology constrains traversal itself.

Under this model even if coordinates exist internally the machine still
computes through local spatial continuity, not arbitrary address access.
Topology becomes semantically meaningful only when movement is constrained
by adjacency.

### Why The Criticism Was Incomplete
The criticism had unintentionally conflated implementation mechanisms with
semantic encoding principles.

The mere existence of coordinates does not make a system address-semantic.
Even a truly spatial system still requires some method to identify
positions, track the cursor, organize hardware, and reference physical
locations. Coordinates in Topocore function only as implementation
identifiers and bookkeeping mechanisms. They do not define executable
meaning.

The crucial distinction:

| | Normal CPU | Topocore |
|---|---|---|
| What determines accessibility | Address | Topology |
| What determines execution flow | Address | Spatial continuity |
| What determines control structure | Symbolic addressing | Traversable geometry |
| Role of coordinates | Semantic - they govern meaning | Bookkeeping - they track position |

Coordinates help the hardware keep track of space. They do not replace
topology as the semantic substrate.

### Final Realization
Topocore does not stop being semasiographic merely because hardware
internally tracks coordinates. The system remains topology-semantic as long
as execution is fundamentally constrained by spatial continuity and
locality rather than arbitrary symbolic jumps.

The important distinction is not:

> "Does the system use coordinates?"

It is:

> "What fundamentally governs executable flow: arbitrary addressing or
> traversable topology?"

### The Design Consequence
This argument has a direct architectural implication. Befunge enforces
locality partially, the cursor moves one step at a time. But arbitrary
jumps are possible. Topocore's design decision to enforce strict locality,
no arbitrary jumps, only neighbor traversal is what completes the
semasiographic argument. This is not an aesthetic choice. It is what makes
the theoretical claim hold.

In Topocore locality is not a feature. It is the foundation of meaning.
