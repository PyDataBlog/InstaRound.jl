```@meta
CurrentModule = InstaRound
```

# InstaRound

Documentation for [InstaRound](https://github.com/PyDataBlog/InstaRound.jl).

A simple package for extending Base.round with instagram like rounding.

## Installation

To install `InstaRound` either do

```julia
using Pkg
Pkg.add("InstaRound")
```

or switch to `Pkg` mode with `]` and issue

```julia
pkg> add InstaRound

## Basic Usage
Round numbers with IGRound

```julia
using InstaRound

julia> round(IGRound, 1_000_000)
"1M"
```

```@index
```

```@autodocs
Modules = [InstaRound]
```
