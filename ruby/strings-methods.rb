def process_text(arr)
  arr.map { |e| e.chomp.strip }.join(' ')
end
