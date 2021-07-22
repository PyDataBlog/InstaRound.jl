"""
"""
function transformer(x)
    return log10(x) |> x -> floor(Int, x)
end


"""
    business_round(number)

Internal function to round a number (num) to the nearest IG style.
"""
function business_round(number)
    if number < 1000
        return string(number)
    else
        log_pos = transformer(number)
        div_3 = div(log_pos, 3)

        unit = units[div_3]

        identifier = number / ( BigInt(10) ^ (3div_3)) |> x -> string(floor(BigInt, x))

        return string(identifier, unit)
    end
end

"""
    round(::Type{IGRound}, x::Number)

Function to round a number x to the nearest IG style.

# Arguments
 * x: The number to be rounded.

# Example

```julia-repl
julia> round(IGRound, 100_000)
"100K"
```
"""
function round(::Type{IGRound}, x::Number)
    return Base.round(BigInt, x) |> business_round
end