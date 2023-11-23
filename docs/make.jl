using Documenter
using Minc2

DocMeta.setdocmeta!(Minc2, :DocTestSetup, :(using Minc2); recursive=true)

makedocs(
    sitename = "Minc2.jl",
    authors  = "Vladimir S FONOV vladimir.fonov@gmail.com",
    format   = Documenter.HTML(size_threshold = nothing,),
    modules  = [Minc2],
    doctest  = false,
    warnonly = true,
    clean    = true,
    pages    = [
        "Introduction to Minc2.jl"  => "index.md",
        "High level functions"      => "high_level.md",
        "Gemetric transformation functions" => "geo.md",
        "Low level functions"        => "high_level.md",
        "Alphabetical function list" => "function_list.md",
    ],
)

# Documenter can also automatically deploy documentation to gh-pages.
# See "Hosting Documentation" and deploydocs() in the Documenter manual
# for more information.
deploydocs(;
     repo = "github.com/vfonov/Minc2.jl.git",
     versions = nothing # temporary
)
