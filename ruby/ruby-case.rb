def identify_class(obj)
  case obj.class.to_s
  when 'Hacker'
    puts "It's a #{obj.class}!"
  when 'Submission'
    puts "It's a #{obj.class}!"
  when 'TestCase'
    puts "It's a #{obj.class}!"
  when 'Contest'
    puts "It's a #{obj.class}!"
  end
end
