(0..1000).each do |i|
  message = ""
  message += "Super" if i % 7 == 0
  message += "Fizz" if i % 3 == 0
  message += "Buzz" if i % 5 == 0

  puts message == "" ? i : message
end

# Alternate method:
#
# i = -1
#  while i <= 999
#    i += 1
#    if (i % 3 == 0) && (i % 5 == 0) && (i % 7 == 0)
#      puts "SuperFizzBuzz"
#    elsif (i % 3 == 0) && (i % 7 == 0)
#      puts "SuperFizz"
#    elsif (i % 5 == 0) && (i % 7 == 0)
#      puts "Superbuzz"
#    elsif (i % 3 == 0) && (i % 5 == 0)
#      puts "FizzBuzz"
#    elsif (i % 3 == 0)
#      puts "Fizz"
#    elsif (i % 5 == 0)
#      puts "Buzz"
#    elsif (i % 7 == 0)
#      puts "Super"
#    else
#      puts i
#    end
#  end
