-- Wrap plain URL strings in CSL bibliography entries with \url{...} for LaTeX/PDF output.
-- Pandoc citeproc can emit URL values as plain Str in bibliography, which do not line-break well.

local function is_latex_output()
  return FORMAT:match("latex") ~= nil
end

local function split_trailing_punct(text)
  local punct = text:match("([%.;,:%)])$")
  if punct then
    return text:sub(1, -2), punct
  end
  return text, ""
end

local function wrap_url_str_inline(inline)
  if inline.t ~= "Str" then
    return nil
  end

  if not inline.text:match("^https?://") then
    return nil
  end

  local core, punct = split_trailing_punct(inline.text)
  local out = { pandoc.RawInline("latex", "\\url{" .. core .. "}") }
  if punct ~= "" then
    table.insert(out, pandoc.Str(punct))
  end
  return out
end

function Div(el)
  if not is_latex_output() then
    return nil
  end

  if not el.classes:includes("csl-entry") then
    return nil
  end

  return el:walk({
    Str = function(inl)
      return wrap_url_str_inline(inl)
    end
  })
end
