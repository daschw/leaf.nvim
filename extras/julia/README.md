# julia REPL leaf theme

This folder conatains the file `leaf.jl` defining six [OhMyREPL.jl](https://kristofferc.github.io/OhMyREPL.jl/latest/) color schemes for the [julia](https://julialang.org/) REPL.

## Usage

To activate for example the leaf dark theme in your active REPL session, make sure you have [OhMyREPL.jl](https://github.com/KristofferC/OhMyREPL.jl) and [Crayons.jl](https://github.com/KristofferC/Crayons.jl) installed in your current environment, include `leaf.jl` and set the colorscheme with `OhMyREPL.colorscheme!`.

```julia
pkg> add Crayons OhMyREPL

julia> import OhMyREPL

julia> include("$LEAF_REPO_CLONE/extras/julia/leaf.jl")
█ █ █ █ █ █ █ █ █ █ █ █ 

julia> OhMyREPL.colorscheme!("leaf dark")
█ █ █ █ █ █ █ █ █ █ █ █ 
```

Replace `$LEAF_REPO_CLONE` with the path to your leaf.nvim clone.
The six leaf themes are:
- `"leaf light"`
- `"leaf lighter"`
- `"leaf lightest"`
- `"leaf dark"`
- `"leaf darker"`
- `"leaf darkest"`

To make these changes permanent you can add theme to your julia startup file.

```julia
# ~/.julia/config/startup.jl

try
    import OhMyREPL
    include("$LEAF_REPO_CLONE/extras/julia/leaf.jl") # add leaf colorschemes to OhMyREPL
    OhMyREPL.colorscheme!("leaf dark")
catch e
    @warn(
        "Error initializing OhMyREPL. Make sure to also `Pkg.add(\"Crayons\")",
        exception = (e, catch_backtrace()),
    )
end
```
