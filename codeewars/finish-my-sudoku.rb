def done_or_not(this_way)
  that_way = this_way.transpose
  success = 'Finished!'
  failure = 'Try again!'
  [this_way, that_way]
    .each do |ways|
    return failure if ways.any? do |e|
      e.uniq.length != 9 && e.reduce(:+) != 45
    end
  end
  success
end
