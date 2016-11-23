#!/bin/ruby

# q = gets.chomp.to_i
# queries = []
#
# q.times do
#   queries << gets.chomp
# end

q = 10
queries = [
  '1 42',
  '2',
  '1 14',
  '3',
  '1 28',
  '3',
  '1 60',
  '1 78',
  '2',
  '2'
]

def solution(k)
  que = []
  k.each do |e|
    que << e.split(' ').last if e[0] == '1'
    que.shift if e == '2'
    puts que.first if e == '3'
  end
end

solution(queries)
