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
```

## Basic Usage

Round numbers with IGRound

```julia
using InstaRound

julia> round(IGRound, 1_000_000; names=false)
"1.0M"

julia> round(IGRound, 1_000_000; names=true)
"1.0 Million"
```

## Practical Use Case

```julia
using InstaRound
using PolygonIO
using DataFrames


opts = PolyOpts(API_KEY, DataFrame)
bars_df = crypto_aggregates_bars(opts, "X:BTCUSD", 5, "minute", "2020-10-14", "2020-10-16")
```

```julia-repl
julia> round.(IGRound, bars_df.c; names=false)
24-element Vector{String}:
 "11.42K"
 "11.42K"
 "11.44K"
 "11.45K"
 "11.45K"
 "11.45K"
 "11.45K"
 ⋮
 "11.44K"
 "11.44K"
 "11.44K"
 "11.45K"
 "11.45K"
 "11.45K"
 "11.44K"
```

```julia-repl
julia> round.(IGRound, bars_df.c; names=true)
24-element Vector{String}:
 "11.42 Thousand"
 "11.42 Thousand"
 "11.44 Thousand"
 "11.45 Thousand"
 "11.45 Thousand"
 "11.45 Thousand"
 "11.45 Thousand"
 ⋮
 "11.44 Thousand"
 "11.44 Thousand"
 "11.44 Thousand"
 "11.45 Thousand"
 "11.45 Thousand"
 "11.45 Thousand"
 "11.44 Thousand"

```

## Abbreviation Source

|Abbreviation|Name             |Value|Equivalent|
|:----------:|:---------------:|:---:|:--------:|
|     K      | Thousand (Kilo) |10^3 |   1000   |
|     M      |     Million     |10^6 |  1000K   |
|     B      |     Billion     |10^9 |  1000M   |
|     t      |    Trillion     |10^12|  1000B   |
|     q      |   Quadrillion   |10^15|  1000t   |
|     Q      |   Quintillion   |10^18|  1000q   |
|     s      |   Sextillion    |10^21|  1000Q   |
|     S      |   Septillion    |10^24|  1000s   |
|     o      |    Octillion    |10^27|  1000S   |
|     n      |    Nonillion    |10^30|  1000o   |
|     d      |    Decillion    |10^33|  1000n   |
|     U      |   Undecillion   |10^36|  1000d   |
|     D      |  Duodecillion   |10^39|  1000U   |
|     T      |  Tredecillion   |10^42|  1000D   |
|     Qt     |Quattuordecillion|10^45|  1000T   |
|     Qd     |  Quindecillion  |10^48|  1000Qt  |
|     Sd     |  Sexdecillion   |10^51|  1000Qd  |
|     St     | Septendecillion |10^54|  1000Sd  |
|     O      |  Octodecillion  |10^57|  1000St  |
|     N      | Novemdecillion  |10^60|  1000O   |
|     v      |  Vigintillion   |10^63|  1000N   |
|     c      | Unvigintillion  |10^66|  1000v   |

```@index
```

```@autodocs
Modules = [InstaRound]
```
