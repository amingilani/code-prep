#!/bin/ruby

require 'prime'

def palindrome_primes_upto(number)
  is_prime = ->(n) { n == n.to_s.reverse.to_i }
  Prime.lazy.select { |e| is_prime.call(e) }.take(number).to_a.to_s
end

p palindrome_primes_upto(10).to_a.inspect
