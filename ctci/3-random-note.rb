#!/bin/ruby

# m,n = gets.strip.split(' ')
# m = m.to_i
# n = n.to_i
# magazine = gets.strip
# magazine = magazine.split(' ')
# ransom = gets.strip
# ransom = ransom.split(' ')

magazine = %w(give me one grand today night)
ransom = %w(give one grand today)

def solution(m, r)
  intersection_with_repetition = (m | r).flat_map { |e| [e] * [m.count(e), r.count(e)].min }
  r == intersection_with_repetition ? 'Yes' : 'No'
end

puts solution(magazine, ransom)
