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

## Practical Use Case

```julia
using InstaRound
using MarketData
using Dates



start = DateTime(2017, 1, 1)
df = yahoo(:AMZN, YahooOpt(period1 = start))
```

```julia
julia> round.(IGRound, df.AdjClose)
1137×1 TimeArray{String, 1, Date, Vector{String}} 2017-01-03 to 2021-07-09
│            │ AdjClose │
├────────────┼──────────┤
│ 2017-01-03 │ "754"    │
│ 2017-01-04 │ "757"    │
│ 2017-01-05 │ "780"    │
│ ⋮          │ ⋮        │
│ 2021-07-07 │ "3K"     │
│ 2021-07-08 │ "3K"     │
│ 2021-07-09 │ "3K"     │
```

```@index
```

```@autodocs
Modules = [InstaRound]
```
