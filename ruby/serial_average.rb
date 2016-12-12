def serial_average(str)
  # str is in the format SSS-XX.XX-YY.YY
  s = str[0, 3]
  x = str[4, 5].to_f
  y = str[-5, 5].to_f
  z = (x + y) / 2
  z = sprintf('%05.2f', z)
  "#{s}-#{z}"
end
