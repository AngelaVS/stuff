puts "Enter media to delete";
characters = gets.chomp;

File.open("arraystarter.rb").each { |line| 
  unless characters.each_char.map  { |c| line.include?(c) }.include? false
    puts "Did you mean #{line}?";
  intent = gets.chomp.downcase
  case intent
  when 'yes'
   puts "#{line} deleted!"
  when 'no'
  puts "Nevermind, then."
  end
  end
 }