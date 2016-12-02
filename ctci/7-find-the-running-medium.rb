#!/bin/ruby

# n = gets.strip.to_i
# a = Array.new(n)
# for a_i in (0..n-1)
#     a[a_i] = gets.strip.to_i
# end

n = 6
a = [12,
     4,
     5,
     3,
     8,
     7]

require 'bigdecimal'
require 'bigdecimal/util'

def solution(h)
  h.sort!
  (0...h.length).each do |e|
    running = h[0..e]
    puts median(running).round(1).to_f
  end
end

def median(r)
  length = r.length
  return r[length / 2] if length.odd?
  middle = length / 2

  (r[middle - 1].to_d + r[middle]) / 2
end

solution(a)
