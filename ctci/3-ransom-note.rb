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
  r.sort!
  m.sort!

  until r.empty?
    i = m.index(r[0])
    return 'No' if i.nil?
    r.delete_at(0)
    m.delete_at(i)
  end
  'Yes'
end

puts solution(magazine, ransom)
