def strike(str)
  "<strike>#{str}</strike>"
end

def mask_article(str, arr)
  arr.each { |e| str.gsub!(e, strike(e)) }
  str
end
