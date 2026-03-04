-- Pandoc Lua filter for publishing build:
-- Updates footer chapter markers from level-1 headings.

local function stringify(inlines)
  return pandoc.utils.stringify(inlines or {})
end

local function trim(s)
  return (s or ""):gsub("^%s+", ""):gsub("%s+$", "")
end

local function latex_escape(s)
  if not s or s == "" then
    return s
  end
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

local function parse_chapter_heading(text)
  -- Matches "6. Title", "6 Title", "6) Title"
  local idx, title = text:match("^%s*(%d+)%s*[%.%)%-]?%s+(.+)$")
  if idx and title then
    return trim(idx), trim(title)
  end
  return "", ""
end

function Header(el)
  if el.level ~= 1 then
    return nil
  end

  if el.classes and el.classes:includes("unlisted") then
    local clear = pandoc.RawBlock("latex", "\\publishSetChapterMark{}{}")
    return { clear, el }
  end

  local text = trim(stringify(el.content))
  local idx, title = parse_chapter_heading(text)
  local mark = pandoc.RawBlock(
    "latex",
    string.format("\\publishSetChapterMark{%s}{%s}", latex_escape(idx), latex_escape(title))
  )
  return { mark, el }
end
