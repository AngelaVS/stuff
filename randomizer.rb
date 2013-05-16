def pick_random_line
  File.readlines("arraystarter.rb").sample
end

puts pick_random_line