puts "Add, random, delete or display?"
choice = gets.chomp.downcase
case choice
when 'add'
puts "What media do you want to add?"
	x = gets.chomp
	library = File.open("arraystarter.rb", "a")
    library.puts "#{x}"
    library.close  
	puts "#{x} added!"
when 'random' 
def random_film
  File.readlines("arraystarter.rb").sample
end
puts "Try watching #{random_film}"
when 'display'
File.open('arraystarter.rb').each_line{ |s|
  puts s}
 when 'delete'
puts "Enter media to delete";
characters = gets.chomp;

File.open("arraystarter.rb").each { |line| 
  unless characters.each_char.map  { |c| line.include?(c) }.include? false
    puts "Did you mean #{line}?";
  intent = gets.chomp.downcase
  case intent
  when 'yes'
  puts "#{line} deleted"
	content_array = IO.readlines("arraystarter.rb")
	content_array.delete(line)
  puts content_array
  when 'no'
  puts "Nevermind, then."
  end
  end
 }
 end