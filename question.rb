puts "Add, random, or display?"
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
end
