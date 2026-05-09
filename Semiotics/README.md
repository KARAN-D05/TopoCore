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

# Saussure - Signifier, Signified, and Arbitrariness

## The Core Idea

Peirce asked - what is the relationship between a sign and the world?
Saussure asked - what is a sign made of internally?

Saussure's answer was `every sign has two parts.`

## Signifier and Signified

**Signifier** - the form of the sign. The sound, the shape, the written mark.
Anything that carries or triggers meaning. The physical or perceptual side.

Example: The written marks `d-o-g` or the spoken sound `dawg`.

**Signified** - the concept the signifier points to. The mental idea or image
it triggers in the mind of the person reading or hearing it.

Example: The mental concept of a four legged animal that barks.

Together they form a sign. You cannot have one without the other.
A signifier with no signified is just noise. A signified with no signifier
is just a thought with no way to communicate it.

## Arbitrariness

Saussure's most important claim - the relationship between signifier and
signified is arbitrary.

Arbitrary means there is no natural or necessary connection between the
form of a sign and the concept it represents. The connection exists only
because a community of people agreed on it.

Example: The word `fire`.
Nothing about the sounds `f-i-r-e` resembles combustion. Nothing about
those four letters looks like flames. English speakers agreed that sound
means that thing. French speakers agreed on `feu`. Hindi speakers on `aag`.
Same signified, completely different signifiers. All arbitrary.

This is why you can learn any language - the mappings are all conventions

## Motivated Signs - Where Arbitrariness Breaks Down

Saussure acknowledged exceptions. Some signs have a natural connection
between signifier and signified. He called these motivated signs.

**Onomatopoeia** - words that sound like what they mean.
Example: `buzz`, `crash`, `hiss`. The sound of the word resembles the sound
of the thing. Not fully arbitrary.

**Visual motivated signs** - marks that look like what they mean.
Example: `>` meaning rightward direction. The shape points right naturally.
You do not need a convention to understand it. The resemblance is inherent.
Compare to `R` meaning right - that is fully arbitrary. Nothing about the
letter R points rightward without a prior agreement.

More examples of motivated visual signs:
- `→` meaning direction
- A map resembling the territory it represents
- A skull meaning danger or death
- `^` meaning upward

Peirce called motivated signs **icons**. Saussure called them motivated.
Same observation, different vocabulary.

## Peirce vs Saussure 

| | Peirce | Saussure |
|---|---|---|
| Question asked | How does a sign relate to the world? | What is a sign made of internally? |
| Focus | Classification of sign types | Structure of the sign itself |
| Key categories | Icon, Index, Symbol | Signifier, Signified |
| On arbitrariness | Icons are non-arbitrary, symbols are arbitrary | Most signs are arbitrary by nature |
| Scope | All signs - pictures, words, code | Primarily natural language |

They are not contradicting each other. They are looking at the same thing
from different angles. Peirce gives us a taxonomy of signs. Saussure gives
us the internal anatomy of a sign.

For Topocore - Peirce is more useful because we are designing a sign system
from scratch and need to make deliberate choices about how motivated or
arbitrary each sign is.

## Glyphs

A glyph is simply a written mark or symbol - any visual form that carries
meaning in a writing system.

Examples:
- The letter `A` is a glyph
- The digit `3` is a glyph
- The arrow `→` is a glyph
- The `+` sign is a glyph
- A Chinese character is a glyph
- A Brainfuck command like `>` is a glyph

Every writing system is a collection of glyphs with agreed meanings.
Some glyphs are iconic, their shape carries meaning naturally.
Some glyphs are symbolic, their meaning is purely conventional.
Most are hybrid.

## The Motivation Spectrum

```
Signs exist on a spectrum from fully arbitrary to fully iconic:
Fully arbitrary ←————————————————————→ Fully iconic
R                          |                    >
means right         means vertical      means right
by convention       movement partly     by resemblance
                      by shape
```

The further right on the spectrum the more readable without a reference.
The further left the more memorization required.

## Design Implication For Topocore

Befunge's current instruction set uses ASCII characters chosen for
convenience - mostly arbitrary symbols with occasional motivated choices
like `>` `<` `^` `v`.

Topocore's glyph system will be designed deliberately.

The goal: maximize iconic encoding. Every glyph should carry as much
meaning as possible through its shape alone, without relying on arbitrary
convention. A person reading a Topocore program should be able to infer
what many instructions do from the shape of the glyphs, without a
reference table.

This is not just aesthetic. It connects directly to the semasiographic
argument - if meaning lives in spatial arrangement and in the shapes of
the marks themselves, then the program becomes more self-explanatory.
The layout and the glyphs together carry the full meaning.
