import OhMyREPL
import Crayons

import OhMyREPL: Passes.SyntaxHighlighter
import Crayons: @crayon_str

function color_crayons(theme)
    theme == "light" && return (
        text=crayon"#2e2c2f",
        comment=crayon"#a6a9a1",
        red=crayon"#9d4b53",
        green=crayon"#59795f",
        yellow=crayon"#a78a58",
        blue=crayon"#40739a",
        purple=crayon"#8c6aa8",
        teal=crayon"#3b8187",
    )
    theme == "lighter" && return (
        text=crayon"#211f22",
        comment=crayon"#a6a9a1",
        red=crayon"#924048",
        green=crayon"#4e6e54",
        yellow=crayon"#9c7f4d",
        blue=crayon"#35688f",
        purple=crayon"#664b7d",
        teal=crayon"#30767c",
    )
    theme == "lightest" && return (
        text=crayon"#161417",
        comment=crayon"#a6a9a1",
        red=crayon"#87353d",
        green=crayon"#436349",
        yellow=crayon"#917442",
        blue=crayon"#2a5d84",
        purple=crayon"#5b4072",
        teal=crayon"#256b71",
    )
    theme == "dark" && return (
        text=crayon"#e1e4dc",
        comment=crayon"#69676a",
        red=crayon"#ba5860",
        green=crayon"#729b79",
        yellow=crayon"#ccaa6c",
        blue=crayon"#5292c6",
        purple=crayon"#8c6aa8",
        teal=crayon"#489ca5",
    )
    theme == "darker" && return (
        text=crayon"#ecefe8",
        comment=crayon"#69676a",
        red=crayon"#c5636b",
        green=crayon"#7da684",
        yellow=crayon"#d7b577",
        blue=crayon"#5d9dd1",
        purple=crayon"#9775b3",
        teal=crayon"#53a7b0",
    )
    theme == "darkest" && return (
        text=crayon"#f7faf3",
        comment=crayon"#69676a",
        red=crayon"#d06e76",
        green=crayon"#88b18f",
        yellow=crayon"#e2c082",
        blue=crayon"#68a8dc",
        purple=crayon"#a280be",
        teal=crayon"#5eb2bb",
    )
end

function leaf_scheme(theme)
    scheme = SyntaxHighlighter.ColorScheme()
    colors = color_crayons(theme)
    SyntaxHighlighter.text!(scheme, colors.text)
    SyntaxHighlighter.comment!(scheme, colors.comment * crayon"italics")
    SyntaxHighlighter.string!(scheme, colors.green)
    SyntaxHighlighter.call!(scheme, colors.blue * crayon"bold")
    SyntaxHighlighter.function_def!(scheme, colors.blue * crayon"bold")
    SyntaxHighlighter.symbol!(scheme, colors.yellow)
    SyntaxHighlighter.op!(scheme, colors.yellow)
    SyntaxHighlighter.keyword!(scheme, colors.purple * crayon"italics")
    SyntaxHighlighter.error!(scheme, colors.red)
    SyntaxHighlighter.number!(scheme, colors.red)
    SyntaxHighlighter.argdef!(scheme, colors.teal)
    SyntaxHighlighter.macro!(scheme, colors.yellow)
    return scheme
end

SyntaxHighlighter.add!("leaf light", leaf_scheme("light"))
SyntaxHighlighter.add!("leaf lighter", leaf_scheme("lighter"))
SyntaxHighlighter.add!("leaf lightest", leaf_scheme("lightest"))
SyntaxHighlighter.add!("leaf dark", leaf_scheme("dark"))
SyntaxHighlighter.add!("leaf darker", leaf_scheme("darker"))
SyntaxHighlighter.add!("leaf darkest", leaf_scheme("darkest"))
