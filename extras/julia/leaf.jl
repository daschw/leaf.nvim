import OhMyREPL
import Crayons

import OhMyREPL: Passes.SyntaxHighlighter
import Crayons: @crayon_str

function color_crayons(theme)
    theme == "light" && return (
        text=crayon"#2e2c2f",
        comment=crayon"#b7bab2",
        red=crayon"#9d4b53",
        green=crayon"#59795f",
        yellow=crayon"#a78a58",
        blue=crayon"#40739a",
        purple=crayon"#8c6aa8",
        aqua=crayon"#3b8187",
    )
    theme == "lighter" && return (
        text=crayon"#201e21",
        comment=crayon"#b7bab2",
        red=crayon"#803e46",
        green=crayon"#405745",
        yellow=crayon"#9c7f4d",
        blue=crayon"#2e546e",
        purple=crayon"#564268",
        aqua=crayon"#2e6669",
    )
    theme == "lightest" && return (
        text=crayon"#121013",
        comment=crayon"#b7bab2",
        red=crayon"#633139",
        green=crayon"#27352b",
        yellow=crayon"#5d4a1c",
        blue=crayon"#1c3542",
        purple=crayon"#3b2e48",
        aqua=crayon"#214b4b",
    )
    theme == "dark" && return (
        text=crayon"#e1e4dc",
        comment=crayon"#585659",
        red=crayon"#ba5860",
        green=crayon"#729b79",
        yellow=crayon"#ccaa6c",
        blue=crayon"#5292c6",
        purple=crayon"#8c6aa8",
        aqua=crayon"#489ca5",
    )
    theme == "darker" && return (
        text=crayon"#eff2ea",
        comment=crayon"#585659",
        red=crayon"#d7656d",
        green=crayon"#8bbd93",
        yellow=crayon"#f1ca80",
        blue=crayon"#64b1f2",
        purple=crayon"#a77ec8",
        aqua=crayon"#55b7b9",
    )
    theme == "darkest" && return (
        text=crayon"#fdfff8",
        comment=crayon"#585659",
        red=crayon"#f4727a",
        green=crayon"#a4dfad",
        yellow=crayon"#ffea94",
        blue=crayon"#76d0ff",
        purple=crayon"#c292e8",
        aqua=crayon"#62d2e1",
    )
end

function leaf_scheme(theme)
    scheme = SyntaxHighlighter.ColorScheme()
    colors = color_crayons(theme)
    SyntaxHighlighter.text!(scheme, colors.text)
    SyntaxHighlighter.comment!(scheme, colors.comment * crayon"italics")
    SyntaxHighlighter.string!(scheme, colors.yellow)
    SyntaxHighlighter.call!(scheme, colors.green * crayon"bold")
    SyntaxHighlighter.function_def!(scheme, colors.green * crayon"bold")
    SyntaxHighlighter.symbol!(scheme, colors.yellow)
    SyntaxHighlighter.op!(scheme, colors.purple)
    SyntaxHighlighter.keyword!(scheme, colors.purple * crayon"italics")
    SyntaxHighlighter.error!(scheme, colors.red)
    SyntaxHighlighter.number!(scheme, colors.yellow)
    SyntaxHighlighter.argdef!(scheme, colors.red)
    SyntaxHighlighter.macro!(scheme, colors.blue)
    return scheme
end

SyntaxHighlighter.add!("leaf light", leaf_scheme("light"))
SyntaxHighlighter.add!("leaf lighter", leaf_scheme("lighter"))
SyntaxHighlighter.add!("leaf lightest", leaf_scheme("lightest"))
SyntaxHighlighter.add!("leaf dark", leaf_scheme("dark"))
SyntaxHighlighter.add!("leaf darker", leaf_scheme("darker"))
SyntaxHighlighter.add!("leaf darkest", leaf_scheme("darkest"))
