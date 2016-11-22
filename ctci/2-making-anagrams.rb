# https://www.hackerrank.com/challenges/ctci-making-anagrams

# a = gets.strip
# b = gets.strip

a = 'cde'
b = 'abc'

ans = 4

def ana(a, b)
  a = a.chars.sort
  b = b.chars.sort

  intersection = a.uniq & b.uniq
  union = a.uniq | b.uniq
  difference = intersection - union

  difference_count = difference.map { |e| a.count(e) + b.count(e) }.reduce(:+)
  union_difference_count = union.map { |e| (a.count(e) - b.count(e)).abs }.reduce(:+)

  # puts union.to_s
  # puts intersection.to_s

  difference_count + union_difference_count
end

puts ana(a, b)
