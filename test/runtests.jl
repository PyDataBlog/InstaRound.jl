using InstaRound
using Test

@testset "InstaRound.jl" begin
    @test round(IGRound, 1_000) == "1K"
    @test round(IGRound, 10_000) == "10K"
    @test round(IGRound, 100_000) == "100K"
    @test round(IGRound, 1_000_000) == "1M"
    @test round(IGRound, 10_000_000) == "10M"
    @test round(IGRound, 100_000_000) == "100M"
    @test round(IGRound, 1_000_000_000) == "1B"
    @test round(IGRound, 10_000_000_000) == "10B"
    @test round(IGRound, 100_000_000_000) == "100B"
    @test round(IGRound, 1_000_000_000_000) == "1T"
    @test round(IGRound, 10_000_000_000_000) == "10T"
    @test round(IGRound, 100_000_000_000_000) == "100T"
    @test round(IGRound, 1_000_000_000_000_000) == "1Q"
    @test round(IGRound, 10_000_000_000_000_000) == "10Q"
    @test round(IGRound, 100_000_000_000_000_000) == "100Q"
end
