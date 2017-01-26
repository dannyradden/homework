(0..1000).each do |i|
  message = ""
  message += "Super" if i % 7 == 0
  message += "Fizz" if i % 3 == 0
  message += "Buzz" if i % 5 == 0

  puts message == "" ? i : message
end
