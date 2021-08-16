# InstaRound

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://PyDataBlog.github.io/InstaRound.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://PyDataBlog.github.io/InstaRound.jl/dev)
[![Build Status](https://github.com/PyDataBlog/InstaRound.jl/workflows/CI/badge.svg)](https://github.com/PyDataBlog/InstaRound.jl/actions)
[![Coverage](https://codecov.io/gh/PyDataBlog/InstaRound.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/PyDataBlog/InstaRound.jl)

A simple package for extending Base.round with a more human readable rounding style.

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
