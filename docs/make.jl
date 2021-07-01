using InstaRound
using Documenter

DocMeta.setdocmeta!(InstaRound, :DocTestSetup, :(using InstaRound); recursive=true)

makedocs(;
    modules=[InstaRound],
    authors="PyDataBlog <pimpfada@gmail.com> and contributors",
    repo="https://github.com/PyDataBlog/InstaRound.jl/blob/{commit}{path}#{line}",
    sitename="InstaRound.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://PyDataBlog.github.io/InstaRound.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/PyDataBlog/InstaRound.jl",
)
