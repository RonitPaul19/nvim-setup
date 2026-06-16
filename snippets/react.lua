local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {

  s("rfc", {
    t({ "const " }),
    i(1, "Component"),
    t({ " = () => {", "  return (", "    <" }),
    i(2, "div"),
    t({ ">", "      " }),
    i(3),
    t({ "", "    </" }),
    i(2),
    t({ ">", "  );", "};", "", "export default " }),
    i(1, "Component"),
    t(";"),
  }),

  s("ust", {
    t("const ["),
    i(1, "state"),
    t(", set"),
    i(1, "State"),
    t("] = useState("),
    i(2),
    t(")"),
  }),

  s("ue", {
    t({ "useEffect(() => {", "  " }),
    i(1),
    t({ "", "}, [" }),
    i(2),
    t("])"),
  }),

  s("ucb", {
    t("const "),
    i(1, "callback"),
    t(" = useCallback(("),
    i(2),
    t({ ") => {", "  " }),
    i(3),
    t({ "", "}, [" }),
    i(4),
    t("])"),
  }),

  s("um", {
    t("const "),
    i(1, "value"),
    t(" = useMemo(("),
    i(2),
    t({ ") => {", "  return " }),
    i(3),
    t({ "", "}, [" }),
    i(4),
    t("])"),
  }),

  s("uref", {
    t("const "),
    i(1, "ref"),
    t(" = useRef("),
    i(2),
    t(")"),
  }),

  s("uctx", {
    t("const "),
    i(1, "context"),
    t(" = useContext("),
    i(2, "Context"),
    t(")"),
  }),

  s("ur", {
    t("const ["),
    i(1, "state"),
    t(", dispatch] = useReducer("),
    i(2, "reducer"),
    t(", "),
    i(3),
    t(")"),
  }),

  s("frag", {
    t({ "<>", "  " }),
    i(1),
    t({ "", "</>" }),
  }),

  s("ctx", {
    t("const "),
    i(1, "Context"),
    t(" = createContext("),
    i(2),
    t(")"),
  }),

  s("provider", {
    t("<"),
    i(1, "Context"),
    t(".Provider value={"),
    i(2),
    t("}>"),
    i(3),
    t("</"),
    i(1, "Context"),
    t(".Provider>"),
  }),

  s("memo", {
    t({ "const " }),
    i(1, "Component"),
    t({ " = React.memo(function " }),
    i(1),
    t({ "({ " }),
    i(2),
    t({ " }) {", "  return (" }),
    i(3),
    t({ "  );", "})" }),
  }),

  s("suspense", {
    t({ "<Suspense fallback={<" }),
    i(1, "Loading"),
    t({ " />}>", "  " }),
    i(2),
    t({ "", "</Suspense>" }),
  }),

  s("lazy", {
    t("const "),
    i(1, "Component"),
    t(" = lazy(() => import('"),
    i(2),
    t("'))"),
  }),

  s("jsxmap", {
    t("{"),
    i(1, "items"),
    t(".map(("),
    i(2, "item"),
    t(", "),
    i(3, "index"),
    t({ ") => (", "  <" }),
    i(4, "div"),
    t(" key={"),
    i(3, "index"),
    t("}>"),
    i(5),
    t("</"),
    i(4),
    t({ ">", "))}" }),
  }),

  s("jsxif", {
    t("{"),
    i(1, "condition"),
    t({ " && (", "  <" }),
    i(2, "div"),
    t(">"),
    i(3),
    t("</"),
    i(2),
    t({ ">", ")}" }),
  }),

  s("jsxtern", {
    t("{"),
    i(1, "condition"),
    t(" ? ("),
    t("  <"),
    i(2, "div"),
    t(">"),
    i(3),
    t("</"),
    i(2),
    t(">"),
    t({ ") : (" }),
    i(4),
    t({ ")", "}" }),
  }),

  s("onch", {
    t("onChange={(e) => "),
    i(1, "setValue(e.target.value)"),
    t("}"),
  }),

  s("onsub", {
    t({ "onSubmit={(e) => {", "  e.preventDefault()", "  " }),
    i(1),
    t({ "", "}}" }),
  }),

  s("oncl", {
    t("onClick={() => "),
    i(1),
    t("}"),
  }),

}
