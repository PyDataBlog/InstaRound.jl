"""
    business_round(num)

Internal function to round a number (num) to the nearest IG style.
"""
function business_round(num)
    if num < 10^3
        return string(num)
    elseif num < 10^4
        return string(string(num)[1], "K")
    elseif num < 10^5
        return string(string(num)[1:2], "K")
    elseif num < 10^6
        return string(string(num)[1:3], "K")
    elseif num < 10^7
        return string(string(num)[1], "M")
    elseif num < 10^8
        return string(string(num)[1:2], "M")
    elseif num < 10^9
        return string(string(num)[1:3], "M")
    elseif num < 10^10
        return string(string(num)[1], "B")
    elseif num < 10^11
        return string(string(num)[1:2], "B")
    elseif num < 10^12
        return string(string(num)[1:3], "B")
    elseif num < 10^13
        return string(string(num)[1], "T")
    elseif num < 10^14
        return string(string(num)[1:2], "T")
    elseif num < 10^15
        return string(string(num)[1:3], "T")
    elseif num < 10^16
        return string(string(num)[1], "Q")
    elseif num < 10^17
        return string(string(num)[1:2], "Q")
    elseif num < 10^18
        return string(string(num)[1:3], "Q")
    end
end


"""
    round(::Type{IGRound}, x::Number)

Main function to round a number x to the nearest IG style.

# Arguments
 * x: The number to round.

```julia
# Example
julia> round(IGRound, 100_000)
"100K"
```
"""
function round(::Type{IGRound}, x::Number)
    init_round = Base.round(Int, x)
    return init_round |> business_round
end