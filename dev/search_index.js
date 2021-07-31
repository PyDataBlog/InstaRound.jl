var documenterSearchIndex = {"docs":
[{"location":"","page":"Home","title":"Home","text":"CurrentModule = InstaRound","category":"page"},{"location":"#InstaRound","page":"Home","title":"InstaRound","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"Documentation for InstaRound.","category":"page"},{"location":"","page":"Home","title":"Home","text":"A simple package for extending Base.round with instagram like rounding.","category":"page"},{"location":"#Installation","page":"Home","title":"Installation","text":"","category":"section"},{"location":"","page":"Home","title":"Home","text":"To install InstaRound either do","category":"page"},{"location":"","page":"Home","title":"Home","text":"using Pkg\nPkg.add(\"InstaRound\")","category":"page"},{"location":"","page":"Home","title":"Home","text":"or switch to Pkg mode with ] and issue","category":"page"},{"location":"","page":"Home","title":"Home","text":"pkg> add InstaRound\n\n## Basic Usage\nRound numbers with IGRound\n","category":"page"},{"location":"","page":"Home","title":"Home","text":"julia using InstaRound","category":"page"},{"location":"","page":"Home","title":"Home","text":"julia> round(IGRound, 1000000; names=false) \"1M\"","category":"page"},{"location":"","page":"Home","title":"Home","text":"\n## Practical Use Case\n","category":"page"},{"location":"","page":"Home","title":"Home","text":"julia using InstaRound using MarketData using Dates","category":"page"},{"location":"","page":"Home","title":"Home","text":"start = DateTime(2017, 1, 1) df = yahoo(:AMZN, YahooOpt(period1 = start))","category":"page"},{"location":"","page":"Home","title":"Home","text":"","category":"page"},{"location":"","page":"Home","title":"Home","text":"julia julia> round.(IGRound, df.AdjClose; names=false) 1137×1 TimeArray{String, 1, Date, Vector{String}} 2017-01-03 to 2021-07-09 │            │ AdjClose │ ├────────────┼──────────┤ │ 2017-01-03 │ \"754\"    │ │ 2017-01-04 │ \"757\"    │ │ 2017-01-05 │ \"780\"    │ │ ⋮          │ ⋮        │ │ 2021-07-07 │ \"3K\"     │ │ 2021-07-08 │ \"3K\"     │ │ 2021-07-09 │ \"3K\"     │","category":"page"},{"location":"","page":"Home","title":"Home","text":"\n## Abbreviation Source\n\n|Abbreviation|Name             |Value|Equivalent|\n|:----------:|:---------------:|:---:|:--------:|\n|     K      | Thousand (Kilo) |10^3 |   1000   |\n|     M      |     Million     |10^6 |  1000K   |\n|     B      |     Billion     |10^9 |  1000M   |\n|     t      |    Trillion     |10^12|  1000B   |\n|     q      |   Quadrillion   |10^15|  1000t   |\n|     Q      |   Quintillion   |10^18|  1000q   |\n|     s      |   Sextillion    |10^21|  1000Q   |\n|     S      |   Septillion    |10^24|  1000s   |\n|     o      |    Octillion    |10^27|  1000S   |\n|     n      |    Nonillion    |10^30|  1000o   |\n|     d      |    Decillion    |10^33|  1000n   |\n|     U      |   Undecillion   |10^36|  1000d   |\n|     D      |  Duodecillion   |10^39|  1000U   |\n|     T      |  Tredecillion   |10^42|  1000D   |\n|     Qt     |Quattuordecillion|10^45|  1000T   |\n|     Qd     |  Quindecillion  |10^48|  1000Qt  |\n|     Sd     |  Sexdecillion   |10^51|  1000Qd  |\n|     St     | Septendecillion |10^54|  1000Sd  |\n|     O      |  Octodecillion  |10^57|  1000St  |\n|     N      | Novemdecillion  |10^60|  1000O   |\n|     v      |  Vigintillion   |10^63|  1000N   |\n|     c      | Unvigintillion  |10^66|  1000v   |\n","category":"page"},{"location":"","page":"Home","title":"Home","text":"@index","category":"page"},{"location":"","page":"Home","title":"Home","text":"","category":"page"},{"location":"","page":"Home","title":"Home","text":"@autodocs Modules = [InstaRound] ```","category":"page"}]
}
