#!/bin/ruby

input1 = [2, 1, 3, 1, 2]
output1 = input1.sort

$swaps = 0

def merge_sort(a)
  puts "Sorting #{a.inspect}"
  return a if a.length == 1
  middle = (a.length / 2) - 1

  left_half = a[0..middle]
  right_half = a[middle + 1..-1]

  puts "Left half #{left_half}"
  puts "Right half #{right_half}"

  sorted_left_half = merge_sort(left_half)
  sorted_right_half = merge_sort(right_half)

  puts "Merging #{sorted_left_half.inspect} & #{sorted_right_half}"

  sorted = []

  until sorted_left_half.empty? || sorted_right_half.empty?
    left = sorted_left_half.first
    right = sorted_right_half.first
    if (left <=> right) == 1
      sorted << sorted_right_half.shift
      $swaps += 1
    else
      sorted << sorted_left_half.shift
    end
  end
  sorted << [sorted_right_half, sorted_left_half].compact
  sorted.flatten.compact
end

merge_sort(input1).inspect
puts $swaps
