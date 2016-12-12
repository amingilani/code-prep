# Your code here
def count_multibyte_char(str)
  str.bytes.count - str.chars.count
end
