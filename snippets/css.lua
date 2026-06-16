local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {

  s("flex", {
    t({ "display: flex;" }),
  }),

  s("flexc", {
    t({ "display: flex;", "justify-content: center;", "align-items: center;" }),
  }),

  s("flexcol", {
    t({ "display: flex;", "flex-direction: column;" }),
  }),

  s("grid", {
    t({ "display: grid;" }),
  }),

  s("gridc", {
    t({ "display: grid;", "place-items: center;" }),
  }),

  s("media", {
    t({ "@media (" }),
    i(1, "max-width: 768px"),
    t({ ") {", "  " }),
    i(2),
    t({ "", "}" }),
  }),

  s("keyframes", {
    t({ "@keyframes " }),
    i(1, "name"),
    t({ " {", "  0% {", "    " }),
    i(2),
    t({ "", "  }", "  100% {", "    " }),
    i(3),
    t({ "", "  }", "}" }),
  }),

  s("anim", {
    t("animation: "),
    i(1, "name"),
    t(" "),
    i(2, "1s"),
    t(" "),
    i(3, "ease-in-out"),
    t(";"),
  }),

  s("trans", {
    t("transition: "),
    i(1, "all"),
    t(" "),
    i(2, "0.3s"),
    t(" "),
    i(3, "ease"),
    t(";"),
  }),

  s("transform", {
    t("transform: "),
    i(1, "translate(0, 0)"),
    t(";"),
  }),

  s("posa", {
    t({ "position: absolute;", "top: " }),
    i(1, "0"),
    t(";"),
    t({ "", "left: " }),
    i(2, "0"),
    t(";"),
  }),

  s("posr", {
    t("position: relative;"),
  }),

  s("posf", {
    t({ "position: fixed;", "top: " }),
    i(1, "0"),
    t(";"),
    t({ "", "left: " }),
    i(2, "0"),
    t(";"),
  }),

  s("posst", {
    t("position: sticky;"),
  }),

  s("ff", {
    t("font-family: "),
    i(1, "'Inter', sans-serif"),
    t(";"),
  }),

  s("fs", {
    t("font-size: "),
    i(1, "16px"),
    t(";"),
  }),

  s("fw", {
    t("font-weight: "),
    i(1, "400"),
    t(";"),
  }),

  s("ta", {
    t("text-align: "),
    i(1, "center"),
    t(";"),
  }),

  s("td", {
    t("text-decoration: "),
    i(1, "none"),
    t(";"),
  }),

  s("bd", {
    t("border: "),
    i(1, "1px solid #e5e7eb"),
    t(";"),
  }),

  s("bdrs", {
    t("border-radius: "),
    i(1, "8px"),
    t(";"),
  }),

  s("bs", {
    t("box-shadow: "),
    i(1, "0 1px 3px rgba(0,0,0,0.1)"),
    t(";"),
  }),

  s("ts", {
    t("text-shadow: "),
    i(1, "0 1px 2px rgba(0,0,0,0.1)"),
    t(";"),
  }),

  s("m", {
    t("margin: "),
    i(1, "0"),
    t(";"),
  }),

  s("mt", { t("margin-top: "), i(1, "0"), t(";") }),
  s("mr", { t("margin-right: "), i(1, "0"), t(";") }),
  s("mb", { t("margin-bottom: "), i(1, "0"), t(";") }),
  s("ml", { t("margin-left: "), i(1, "0"), t(";") }),
  s("mx", { t("margin-inline: "), i(1, "0"), t(";") }),
  s("my", { t("margin-block: "), i(1, "0"), t(";") }),

  s("p", {
    t("padding: "),
    i(1, "0"),
    t(";"),
  }),

  s("pt", { t("padding-top: "), i(1, "0"), t(";") }),
  s("pr", { t("padding-right: "), i(1, "0"), t(";") }),
  s("pb", { t("padding-bottom: "), i(1, "0"), t(";") }),
  s("pl", { t("padding-left: "), i(1, "0"), t(";") }),
  s("px", { t("padding-inline: "), i(1, "0"), t(";") }),
  s("py", { t("padding-block: "), i(1, "0"), t(";") }),

  s("w", { t("width: "), i(1, "100%"), t(";") }),
  s("h", { t("height: "), i(1, "100%"), t(";") }),
  s("minw", { t("min-width: "), i(1, "0"), t(";") }),
  s("maxw", { t("max-width: "), i(1, "100%"), t(";") }),
  s("minh", { t("min-height: "), i(1, "0"), t(";") }),
  s("maxh", { t("max-height: "), i(1, "100%"), t(";") }),

  s("var", {
    t("var(--"),
    i(1),
    t(")"),
  }),

  s("clr", {
    t("color: "),
    i(1, "#000"),
    t(";"),
  }),

  s("bgc", {
    t("background-color: "),
    i(1, "#fff"),
    t(";"),
  }),

  s("d", {
    t("display: "),
    i(1, "block"),
    t(";"),
  }),

  s("jc", {
    t("justify-content: "),
    i(1, "center"),
    t(";"),
  }),

  s("ai", {
    t("align-items: "),
    i(1, "center"),
    t(";"),
  }),

  s("gap", {
    t("gap: "),
    i(1, "8px"),
    t(";"),
  }),

  s("fld", {
    t("flex-direction: "),
    i(1, "row"),
    t(";"),
  }),

  s("flw", {
    t("flex-wrap: "),
    i(1, "wrap"),
    t(";"),
  }),

  s("fl", {
    t("flex: "),
    i(1, "1"),
    t(";"),
  }),

  s("gtc", {
    t("grid-template-columns: "),
    i(1, "repeat(3, 1fr)"),
    t(";"),
  }),

  s("gtr", {
    t("grid-template-rows: "),
    i(1, "auto"),
    t(";"),
  }),

  s("overflow", {
    t("overflow: "),
    i(1, "hidden"),
    t(";"),
  }),

  s("cur", {
    t("cursor: "),
    i(1, "pointer"),
    t(";"),
  }),

  s("ls", {
    t("list-style: "),
    i(1, "none"),
    t(";"),
  }),

  s("op", {
    t("opacity: "),
    i(1, "0.5"),
    t(";"),
  }),

  s("z", {
    t("z-index: "),
    i(1, "1"),
    t(";"),
  }),

}
