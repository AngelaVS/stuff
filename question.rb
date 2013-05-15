puts "Add, random, or display?"
choice = gets.chomp.downcase
case choice
when 'add'
puts "What movie do you want to add?"
	x = gets.chomp
	somefile = File.open("arraystarter.rb", "a")
somefile.puts "#{x}"
somefile.close  
def update
	array << x
end
	puts "#{x} added!"
when 'random'
puts "#{array.sample}"
when 'display'
File.open('arraystarter.rb').each_line{ |s|
  puts s}
end
