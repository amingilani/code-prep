#!/bin/ruby

# t = gets.strip.to_i
# for a0 in (0..t-1)
#     expression = gets.strip
# end

t = 3
expressions = [
  '}][}}(}][))]',
  '[](){()}',
  '()',
  '({}([][]))[]()',
  '{)[](}]}]}))}(())('
]

def solution(s)
  until s.empty?
    start = s.dup
    s.sub!('()', '')
    s.sub!('[]', '')
    s.sub!('{}', '')
    return 'NO' if start == s
  end
  'YES'
end

expressions.each do |e|
  puts solution(e)
end

# puts solution(expressions[3])
