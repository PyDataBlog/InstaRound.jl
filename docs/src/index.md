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
julia> round.(IGRound, df.AdjClose; names=false)
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
