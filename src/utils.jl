"""
    log_transformer(x)

Internal function to exponent of x.
Used to select the nearest unit index.
"""
function log_transformer(x)
    return floor(Int, log10(x))
end


"""
    business_round(number::Number, names::Bool)

Internal function to round a number (num) to the nearest IG style.
"""
function business_round(number::Number, names::Bool)
    if number < 1000
        return string(number)
    else
        return extract_identifying_unit(number, names)
    end
end


"""
    extract_identifying_unit(num::Number, names::Bool)

Internal function to extract the identifying unit from a number.
"""
function extract_identifying_unit(num::Number, names::Bool)
    log_pos = log_transformer(num)
    div_3 = log_pos ÷ 3

    if names
        unit =  unit_names[div_3]
    else
        unit = units[div_3]
    end
    identifier = num / ( BigInt(10) ^ (3 * div_3) ) |> x -> string(floor(Int, x))

    return string(identifier, unit)
end


"""
    round(::Type{IGRound}, x::Number; names::Bool=false)

Function to round a number x to the nearest IG style.

# Arguments
 * x: The number to be rounded.
 * names: If true, the unit will be names, if false, the unit will be the number.

# Example

```julia-repl
julia> round(IGRound, 100_000)
"100Thousand"
```
"""
function round(::Type{IGRound}, x::Number; names::Bool=false)
    init_round =  Base.round(BigInt, x)
    return business_round(init_round, names)
end
