local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {

  s("html", {
    t({ "<!DOCTYPE html>", "<html lang=\"en\">", "<head>", "  <meta charset=\"UTF-8\">" }),
    t({ "", "  <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">" }),
    t({ "", "  <title>" }),
    i(1, "Document"),
    t({ "</title>", "</head>", "<body>", "  " }),
    i(2),
    t({ "", "</body>", "</html>" }),
  }),

  s("doctype", {
    t("<!DOCTYPE html>"),
  }),

  s("meta", {
    t("<meta "),
    i(1, "name"),
    t("=\""),
    i(2, "value"),
    t("\">"),
  }),

  s("link", {
    t("<link rel=\""),
    i(1, "stylesheet"),
    t("\" href=\""),
    i(2),
    t("\">"),
  }),

  s("script", {
    t("<script "),
    i(1, "src"),
    t("=\""),
    i(2),
    t({ "\"></script>", "" }),
  }),

  s("style", {
    t({ "<style>", "  " }),
    i(1),
    t({ "", "</style>" }),
  }),

  s("img", {
    t("<img src=\""),
    i(1),
    t("\" alt=\""),
    i(2),
    t("\">"),
  }),

  s("a", {
    t("<a href=\""),
    i(1),
    t("\">"),
    i(2),
    t("</a>"),
  }),

  s("div", {
    t("<div"),
    t(">"),
    i(1),
    t("</div>"),
  }),

  s("divc", {
    t("<div class=\""),
    i(1),
    t("\">"),
    i(2),
    t("</div>"),
  }),

  s("span", {
    t("<span>"),
    i(1),
    t("</span>"),
  }),

  s("ul", {
    t({ "<ul>", "  <li>" }),
    i(1),
    t({ "</li>", "</ul>" }),
  }),

  s("ol", {
    t({ "<ol>", "  <li>" }),
    i(1),
    t({ "</li>", "</ol>" }),
  }),

  s("li", {
    t("<li>"),
    i(1),
    t("</li>"),
  }),

  s("table", {
    t({ "<table>", "  <thead>", "    <tr>", "      <th>" }),
    i(1),
    t({ "</th>", "    </tr>", "  </thead>", "  <tbody>", "    <tr>", "      <td>" }),
    i(2),
    t({ "</td>", "    </tr>", "  </tbody>", "</table>" }),
  }),

  s("form", {
    t({ "<form action=\"" }),
    i(1),
    t({ "\" method=\"" }),
    i(2, "POST"),
    t({ "\">", "  " }),
    i(3),
    t({ "", "</form>" }),
  }),

  s("input", {
    t("<input type=\""),
    i(1, "text"),
    t("\" name=\""),
    i(2),
    t("\" id=\""),
    i(3),
    t("\">"),
  }),

  s("button", {
    t("<button"),
    t(">"),
    i(1),
    t("</button>"),
  }),

  s("textarea", {
    t("<textarea name=\""),
    i(1),
    t("\" id=\""),
    i(2),
    t({ "\" rows=\"", 4, "\">", "" }),
    i(3),
    t({ "", "</textarea>" }),
  }),

  s("select", {
    t({ "<select name=\"" }),
    i(1),
    t({ "\" id=\"" }),
    i(2),
    t({ "\">", "  <option value=\"\">" }),
    i(3),
    t({ "</option>", "</select>" }),
  }),

  s("nav", {
    t({ "<nav>", "  " }),
    i(1),
    t({ "", "</nav>" }),
  }),

  s("header", {
    t({ "<header>", "  " }),
    i(1),
    t({ "", "</header>" }),
  }),

  s("footer", {
    t({ "<footer>", "  " }),
    i(1),
    t({ "", "</footer>" }),
  }),

  s("main", {
    t({ "<main>", "  " }),
    i(1),
    t({ "", "</main>" }),
  }),

  s("section", {
    t({ "<section>", "  " }),
    i(1),
    t({ "", "</section>" }),
  }),

  s("article", {
    t({ "<article>", "  " }),
    i(1),
    t({ "", "</article>" }),
  }),

  s("aside", {
    t({ "<aside>", "  " }),
    i(1),
    t({ "", "</aside>" }),
  }),

  s("figure", {
    t({ "<figure>", "  " }),
    i(1),
    t({ "", "  <figcaption>" }),
    i(2),
    t({ "</figcaption>", "</figure>" }),
  }),

  s("video", {
    t("<video src=\""),
    i(1),
    t("\" controls"),
    t(">"),
    i(2),
    t("</video>"),
  }),

  s("h1", { t("<h1>"), i(1), t("</h1>") }),
  s("h2", { t("<h2>"), i(1), t("</h2>") }),
  s("h3", { t("<h3>"), i(1), t("</h3>") }),
  s("p", { t("<p>"), i(1), t("</p>") }),

  s("br", { t("<br>") }),
  s("hr", { t("<hr>") }),

}
