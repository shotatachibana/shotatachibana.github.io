function OrderedList(el)
  local blocks = { pandoc.RawBlock('html', '<ol class="pub-list" reversed>') }
  for _, item in ipairs(el.content) do
    blocks[#blocks + 1] = pandoc.RawBlock('html', '<li>')
    for _, b in ipairs(item) do
      blocks[#blocks + 1] = b
    end
    blocks[#blocks + 1] = pandoc.RawBlock('html', '</li>')
  end
  blocks[#blocks + 1] = pandoc.RawBlock('html', '</ol>')
  return blocks
end
