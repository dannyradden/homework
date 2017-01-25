ready_to_quit = false
first_bye = false
puts 'HELLO, THIS IS A GROCERY STORE!'

until ready_to_quit
  input = gets.chomp
  if input.empty?
    puts 'HELLO?!'
  elsif input == 'GOODBYE!'
    if first_bye == false
      puts 'ANYTHING ELSE I CAN HELP WITH?'
      first_bye = true
    else
      puts 'THANK YOU FOR CALLING!'
      ready_to_quit = true
    end
  elsif input == input.upcase
    puts 'NO, THIS IS NOT A PET STORE'
  else
    puts 'I AM HAVING A HARD TIME HEARING YOU.'
  end
end
