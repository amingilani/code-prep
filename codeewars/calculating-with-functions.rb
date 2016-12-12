def number(num, exp)
  num = num.to_f
  return num if exp.nil?
  exp.unshift(num)
  eval exp.join(' ')
end

def zero(exp = nil)
  num = 0
  number(num, exp)
end

def one(exp = nil)
  num = 1
  number(num, exp)
end

def two(exp = nil)
  num = 2
  number(num, exp)
end

def three(exp = nil)
  num = 3
  number(num, exp)
end

def four(exp = nil)
  num = 4
  number(num, exp)
end

def five(exp = nil)
  num = 5
  number(num, exp)
end

def six(exp = nil)
  num = 6
  number(num, exp)
end

def seven(exp = nil)
  num = 7
  number(num, exp)
end

def eight(exp = nil)
  num = 8
  number(num, exp)
end

def nine(exp = nil)
  num = 9
  number(num, exp)
end

def plus(exp)
  [exp].unshift '+'
end

def minus(exp)
  [exp].unshift '-'
end

def times(exp)
  [exp].unshift '*'
end

def divided_by(exp)
  [exp].unshift '/'
end

# def seven(exp = nil)
#   return 7 if exp.nil?
#   exp.unshift(7)
#   eval exp.join(' ')
# end
#
# def times(exp)
#   [exp].unshift '*'
# end

# puts seven(times(seven())).inspect
