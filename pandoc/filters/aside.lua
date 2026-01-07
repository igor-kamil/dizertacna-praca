-- Pandoc Lua filter: ::: {.aside} ... :::  ->  LaTeX tcolorbox ("aside" environment)
-- Uses the first **bold** paragraph as the box title (if present).

local function stringify(inlines)
  return pandoc.utils.stringify(inlines or {})
end

local function latex_escape(s)
  if not s or s == "" then return s end
  -- minimal escaping for common LaTeX special chars in titles
  s = s:gsub("\\", "\\textbackslash{}")
  s = s:gsub("%%", "\\%%")
  s = s:gsub("%$", "\\$")
  s = s:gsub("#", "\\#")
  s = s:gsub("&", "\\&")
  s = s:gsub("_", "\\_")
  s = s:gsub("{", "\\{")
  s = s:gsub("}", "\\}")
  s = s:gsub("%^", "\\^{}")
  s = s:gsub("~", "\\~{}")
  return s
end

function Div(el)
  if not (el.classes and el.classes:includes("aside")) then
    return nil
  end

  local title = nil

  -- Detect: first block is a Para starting with Strong(...) => title
  if #el.content > 0 and el.content[1].t == "Para" then
    local first = el.content[1].content
    if #first > 0 and first[1].t == "Strong" then
      title = latex_escape(stringify(first[1].content))
      table.remove(el.content, 1) -- remove title paragraph from content
    end
  end

  local begin_box = "\\begin{aside}"

  -- IMPORTANT: return a FLAT list of Blocks (not nested)
  local out = pandoc.List:new()
  out:insert(pandoc.RawBlock("latex", begin_box))
  if title and title ~= "" then
    out:insert(pandoc.RawBlock("latex", string.format("\\textbf{%s}\\par\\medskip", title)))
  end
  for _, b in ipairs(el.content) do
    out:insert(b)
  end
  out:insert(pandoc.RawBlock("latex", "\\end{aside}"))
  return out
end
