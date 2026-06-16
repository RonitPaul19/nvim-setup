local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {

  s("clog", {
    t("console.log("),
    i(1),
    t(")"),
  }),

  s("clr", {
    t("console.log({ "),
    i(1),
    t(" })"),
  }),

  s("cerr", {
    t("console.error("),
    i(1),
    t(")"),
  }),

  s("cwar", {
    t("console.warn("),
    i(1),
    t(")"),
  }),

  s("fn", {
    t("function "),
    i(1, "name"),
    t("("),
    i(2),
    t({ ") {", "  " }),
    i(3),
    t({ "", "}" }),
  }),

  s("af", {
    t("("),
    i(1),
    t(") => "),
    i(2),
  }),

  s("afb", {
    t("("),
    i(1),
    t({ ") => {", "  " }),
    i(2),
    t({ "", "}" }),
  }),

  s("arr", {
    t("const "),
    i(1, "fn"),
    t(" = ("),
    i(2),
    t({ ") => {", "  " }),
    i(3),
    t({ "", "}" }),
  }),

  s("iife", {
    t({ "(function() {", "  " }),
    i(1),
    t({ "", "})()" }),
  }),

  s("im", {
    t("import "),
    i(1, "name"),
    t(" from '"),
    i(2, "module"),
    t("'"),
  }),

  s("imn", {
    t("import { "),
    i(1),
    t(" } from '"),
    i(2, "module"),
    t("'"),
  }),

  s("ims", {
    t("import * as "),
    i(1, "name"),
    t(" from '"),
    i(2, "module"),
    t("'"),
  }),

  s("exd", {
    t("export default "),
    i(1),
  }),

  s("exn", {
    t("export { "),
    i(1),
    t(" }"),
  }),

  s("exf", {
    t("export const "),
    i(1, "name"),
    t(" = ("),
    i(2),
    t({ ") => {", "  " }),
    i(3),
    t({ "", "}" }),
  }),

  s("req", {
    t("const "),
    i(1, "name"),
    t(" = require('"),
    i(2, "module"),
    t("')"),
  }),

  s("afn", {
    t("async function "),
    i(1, "name"),
    t("("),
    i(2),
    t({ ") {", "  " }),
    i(3),
    t({ "", "}" }),
  }),

  s("aw", {
    t("await "),
    i(1),
  }),

  s("prom", {
    t({ "new Promise((resolve, reject) => {", "  " }),
    i(1),
    t({ "", "})" }),
  }),

  s("foreach", {
    t(""),
    i(1, "arr"),
    t(".forEach(("),
    i(2, "item"),
    t({ ") => {", "  " }),
    i(3),
    t({ "", "})" }),
  }),

  s("map", {
    t("const result = "),
    i(1, "arr"),
    t(".map(("),
    i(2, "item"),
    t({ ") => {", "  " }),
    i(3),
    t({ "", "})" }),
  }),

  s("filter", {
    t("const result = "),
    i(1, "arr"),
    t(".filter(("),
    i(2, "item"),
    t({ ") => {", "  return " }),
    i(3),
    t({ "", "})" }),
  }),

  s("reduce", {
    t("const result = "),
    i(1, "arr"),
    t(".reduce(("),
    i(2, "acc"),
    t(", "),
    i(3, "curr"),
    t({ ") => {", "  return " }),
    i(4),
    t({ "}, " }),
    i(5, "initial"),
    t(")"),
  }),

  s("find", {
    t("const result = "),
    i(1, "arr"),
    t(".find(("),
    i(2, "item"),
    t({ ") => ", "  " }),
    i(3),
    t({ "", "})" }),
  }),

  s("des", {
    t("const { "),
    i(1),
    t(" } = "),
    i(2),
  }),

  s("desa", {
    t("const [ "),
    i(1),
    t(" ] = "),
    i(2),
  }),

  s("tern", {
    t("const "),
    i(1, "result"),
    t(" = "),
    i(2, "condition"),
    t(" ? "),
    i(3),
    t(" : "),
    i(4),
  }),

  s("tf", {
    t({ "try {", "  " }),
    i(1),
    t({ "", "} catch (" }),
    i(2, "err"),
    t({ ") {", "  " }),
    i(3),
    t({ "", "}" }),
  }),

  s("class", {
    t("class "),
    i(1, "MyClass"),
    t({ " {", "  constructor(" }),
    i(2),
    t({ ") {", "    " }),
    i(3),
    t({ "", "  }", "", "}" }),
  }),

  s("qsel", {
    t("document.querySelector('"),
    i(1),
    t("')"),
  }),

  s("qsela", {
    t("document.querySelectorAll('"),
    i(1),
    t("')"),
  }),

  s("addel", {
    t(""),
    i(1, "element"),
    t(".addEventListener('"),
    i(2, "click"),
    t({ "', () => {", "  " }),
    i(3),
    t({ "", "})" }),
  }),

  s("jsonp", {
    t("JSON.parse("),
    i(1),
    t(")"),
  }),

  s("jsons", {
    t("JSON.stringify("),
    i(1),
    t(")"),
  }),

  s("st", {
    t({ "setTimeout(() => {", "  " }),
    i(1),
    t({ "", "}, " }),
    i(2, "1000"),
    t(")"),
  }),

  s("si", {
    t({ "setInterval(() => {", "  " }),
    i(1),
    t({ "", "}, " }),
    i(2, "1000"),
    t(")"),
  }),

  s("tl", {
    t("`"),
    i(1),
    t("`"),
  }),

  s("us", {
    t("'use strict'"),
  }),

  s("spd", {
    t("..."),
    i(1),
  }),

}
