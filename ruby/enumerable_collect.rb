def rot13(secret_messages)
  first = ('a'..'m').to_a
  second = ('n'..'z').to_a
  final = first.zip(second)
  final += second.zip(first)
  final += [['?', '!'], ['!', '?']]
  final = final.to_h

  secret_messages = secret_messages.map do |message|
    message.chars.map { |e| final[e] || e }.join('')
  end
  secret_messages
end

puts rot13(['Gb trg gb gur bgure fvqr!'])
