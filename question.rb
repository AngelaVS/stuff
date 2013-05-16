def random_film
  File.readlines("arraystarter.rb").sample
end

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
  puts "Try watching #{random_film}"

  when 'display'
  File.open('arraystarter.rb').each_line{ |s| puts s}

  # We want to delete an entry from our file database
  when 'delete'

    # Get input from user, the media name we want to remove from the file
    puts "Enter media to delete"
    title = gets.chomp
    p title

    # Initialize our empty database array
    db = []

    # Let's open our file database
    File.read("arraystarter.rb").each_line do |line|

      # And load it into a Ruby array
      db << line.chop
    end

    # Remove the requested entry
    db.delete(title)

    # Write the array back to the file
    File.open("arraystarter.rb", "w") { |file|

      # Loop over our array
      db.each { |entry|

        # Write the entry and a newline character to the file
        file.write(entry + "\n")
      }

      # Done!
      file.close

    }

    #File.open("arraystarter.rb").each { |line| 

      #unless characters.each_char.map  { |c| line.include?(c) }.include? false

        #puts "Did you mean #{line}?"
        #intent = gets.chomp.downcase

        #case intent

          #when 'yes'
            #puts "#{line} deleted"
            #content_array = IO.readlines("arraystarter.rb")
            #content_array.delete(line)
            #puts content_array

          #when 'no'
            #puts "Nevermind, then."

        #end
      #end
    #}
end
