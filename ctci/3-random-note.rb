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

require 'set'

def solution(m, r)
  return 'No' unless Set.new(r) < Set.new(m)
  r.uniq.map { |e| r.count(e) <= m.count(e) }.include?(false) ? 'No' : 'Yes'
end

puts solution(magazine, ransom)
