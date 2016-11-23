# https://www.hackerrank.com/challenges/ctci-making-anagrams

# a = gets.strip
# b = gets.strip

a = 'cde'
b = 'abc'

ans = 4

def ana(a, b)
  intersection = (a.chars | b.chars).flat_map{|e| [e] * [a.count(e), b.count(e)].min}
  a.length + b.length - 2 * intersection.length
end

puts ana(a, b)
