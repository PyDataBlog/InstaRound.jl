"""
    IGRound

Abstract base type for dispatched InstaRound rounds.
"""
abstract type IGRound end


units = [
    "K", "M", "B", "t", "q", "Q", "s", "S", "o",
    "n", "d", "U", "D", "T", "Qt", "Qd", "Sd", "St",
    "O", "N", "v", "c"
]


unit_names = [
    "Thousand",
    "Million",
    "Billion",
    "Trillion",
    "Quadrillion",
    "Quintillion",
    "Sextillion",
    "Septillion",
    "Octillion",
    "Nonillion",
    "Decillion",
    "Undecillion",
    "Duodecillion",
    "Tredecillion",
    "Quattuordecillion",
    "Quindecillion",
    "Sexdecillion",
    "Septendecillion",
    "Octodecillion",
    "Novemdecillion",
    "Vigintillion",
    "Unvigintillion",
]