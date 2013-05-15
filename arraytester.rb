
file = File.new("arraystarter.rb", "r")
while (line = file.gets)
puts "#{line}"
end
file.close