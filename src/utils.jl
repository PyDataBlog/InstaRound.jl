"""
    business_round(num)

Internal function to round a number (num) to the nearest IG style.
"""
function business_round(num)
    if num < BigInt(10) ^ 3
        return string(num)
    elseif num < BigInt(10) ^ 4
        return string(string(num)[1], "K")
    elseif num < BigInt(10) ^ 5
        return string(string(num)[1:2], "K")
    elseif num < BigInt(10) ^ 6
        return string(string(num)[1:3], "K")
    elseif num < BigInt(10) ^ 7
        return string(string(num)[1], "M")
    elseif num < BigInt(10) ^ 8
        return string(string(num)[1:2], "M")
    elseif num < BigInt(10) ^ 9
        return string(string(num)[1:3], "M")
    elseif num < BigInt(10) ^ 10
        return string(string(num)[1], "B")
    elseif num < BigInt(10) ^ 11
        return string(string(num)[1:2], "B")
    elseif num < BigInt(10) ^ 12
        return string(string(num)[1:3], "B")
    elseif num < BigInt(10) ^ 13
        return string(string(num)[1], "t")
    elseif num < BigInt(10) ^ 14
        return string(string(num)[1:2], "t")
    elseif num < BigInt(10) ^ 15
        return string(string(num)[1:3], "t")
    elseif num < BigInt(10) ^ 16
        return string(string(num)[1], "q")
    elseif num < BigInt(10) ^ 17
        return string(string(num)[1:2], "q")
    elseif num < BigInt(10) ^ 18
        return string(string(num)[1:3], "q")
    elseif num < BigInt(10) ^ 19
        return string(string(num)[1], "Q")
    elseif num < BigInt(10) ^ 20
        return string(string(num)[1:2], "Q")
    elseif num < BigInt(10) ^ 21
        return string(string(num)[1:3], "Q")
    elseif num < BigInt(10) ^ 22
        return string(string(num)[1], "s")
    elseif num < BigInt(10) ^ 23
        return string(string(num)[1:2], "s")
    elseif num < BigInt(10) ^ 24
        return string(string(num)[1:3], "s")
    elseif num < BigInt(10) ^ 25
        return string(string(num)[1], "S")
    elseif num < BigInt(10) ^ 26
        return string(string(num)[1:2], "S")
    elseif num < BigInt(10) ^ 27
        return string(string(num)[1:3], "S")
    elseif num < BigInt(10) ^ 28
        return string(string(num)[1], "o")
    elseif num < BigInt(10) ^ 29
        return string(string(num)[1:2], "o")
    elseif num < BigInt(10) ^ 30
        return string(string(num)[1:3], "o")
    elseif num < BigInt(10) ^ 31
        return string(string(num)[1], "n")
    elseif num < BigInt(10) ^ 32
        return string(string(num)[1:2], "n")
    elseif num < BigInt(10) ^ 33
        return string(string(num)[1:3], "n")
    elseif num < BigInt(10) ^ 34
        return string(string(num)[1], "d")
    elseif num < BigInt(10) ^ 35
        return string(string(num)[1:2], "d")
    elseif num < BigInt(10) ^ 36
        return string(string(num)[1:3], "d")
    elseif num < BigInt(10) ^ 37
        return string(string(num)[1], "U")
    elseif num < BigInt(10) ^ 38
        return string(string(num)[1:2], "U")
    elseif num < BigInt(10) ^ 39
        return string(string(num)[1:3], "U")
    elseif num < BigInt(10) ^ 40
        return string(string(num)[1], "D")
    elseif num < BigInt(10) ^ 41
        return string(string(num)[1:2], "D")
    elseif num < BigInt(10) ^ 42
        return string(string(num)[1:3], "D")
    elseif num < BigInt(10) ^ 43
        return string(string(num)[1], "T")
    elseif num < BigInt(10) ^ 44
        return string(string(num)[1:2], "T")
    elseif num < BigInt(10) ^ 45
        return string(string(num)[1:3], "T")
    elseif num < BigInt(10) ^ 46
        return string(string(num)[1], "Qt")
    elseif num < BigInt(10) ^ 47
        return string(string(num)[1:2], "Qt")
    elseif num < BigInt(10) ^ 48
        return string(string(num)[1:3], "Qt")
    elseif num < BigInt(10) ^ 49
        return string(string(num)[1], "Qd")
    elseif num < BigInt(10) ^ 50
        return string(string(num)[1:2], "Qd")
    elseif num < BigInt(10) ^ 51
        return string(string(num)[1:3], "Qd")
    elseif num < BigInt(10) ^ 52
        return string(string(num)[1], "Sd")
    elseif num < BigInt(10) ^ 53
        return string(string(num)[1:2], "Sd")
    elseif num < BigInt(10) ^ 54
        return string(string(num)[1:3], "Sd")
    elseif num < BigInt(10) ^ 55
        return string(string(num)[1], "St")
    elseif num < BigInt(10) ^ 56
        return string(string(num)[1:2], "St")
    elseif num < BigInt(10) ^ 57
        return string(string(num)[1:3], "St")
    elseif num < BigInt(10) ^ 58
        return string(string(num)[1], "O")
    elseif num < BigInt(10) ^ 59
        return string(string(num)[1:2], "O")
    elseif num < BigInt(10) ^ 60
        return string(string(num)[1:3], "O")
    elseif num < BigInt(10) ^ 61
        return string(string(num)[1], "N")
    elseif num < BigInt(10) ^ 62
        return string(string(num)[1:2], "N")
    elseif num < BigInt(10) ^ 63
        return string(string(num)[1:3], "N")
    elseif num < BigInt(10) ^ 64
        return string(string(num)[1], "v")
    elseif num < BigInt(10) ^ 65
        return string(string(num)[1:2], "v")
    elseif num < BigInt(10) ^ 66
        return string(string(num)[1:3], "v")
    elseif num < BigInt(10) ^ 67
        return string(string(num)[1], "c")
    elseif num < BigInt(10) ^ 68
        return string(string(num)[1:2], "c")
    elseif num < BigInt(10) ^ 69
        return string(string(num)[1:3], "c")
    end
end


"""
    round(::Type{IGRound}, x::Number)

Function to round a number x to the nearest IG style.

# Arguments
 * x: The number to round.

```julia
# Example
julia> round(IGRound, 100_000)
"100K"
```
"""
function round(::Type{IGRound}, x::Number)
    init_round = Base.round(BigInt, x)
    return init_round |> business_round
end