array = ["House_of_Yes", "Mad_Men", "TLW"] 
#puts array.sample
#puts "#{array}"
puts "Add, random, or display?"
choice = gets.chomp.downcase
case choice
when 'add'
puts "What movie do you want to add?"
	x = gets.chomp
def update
	array.push.x!
end
	puts "#{x} added!"
when 'random'
puts "#{array.sample}"
when 'display'
puts "#{array}"
end
puts "What next?"
whatsnext = gets.chomp
when 'display'
puts "#{array}"
end
end