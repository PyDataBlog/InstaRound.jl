"""
    log_transformer(x)

Internal function used to get the exponent of x.
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
    number_groups(s::AbstractString)

Internal function to extract the two groups of numbers from a '.' separated string.
"""
function number_groups(s::AbstractString)
    group_1 = match(r"(\d+)", s)[1]
    group_2 = match(r"(\d+$)", s)[1]

    if length(group_2) > 1
        group_2 = group_2[1:2]
    else
        group_2 = group_2[1]
    end
    return group_1, group_2
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

    indentifier = string(num / ( BigInt(10) ^ (3 * div_3) ))
    main_int, rem_float = number_groups(indentifier)

    if names
        return string(main_int, ".", rem_float, " ", unit)
    else
        return string(main_int, ".", rem_float, unit)
    end
end


"""
    round(::Type{IGRound}, x::Number; names::Bool=false)

Function to round a number x to the nearest IG style.

# Arguments
 * x: The number to be rounded.
 * names: If true, the unit will be names, if false, the unit will be the number.

# Example

```julia-repl
julia> round(IGRound, 100_000; names=true)
"100Thousand"
```
"""
function round(::Type{IGRound}, x::Number; names::Bool=false)
    init_round =  Base.round(BigInt, x)
    return business_round(init_round, names)
end
