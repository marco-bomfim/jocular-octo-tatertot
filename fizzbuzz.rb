# FizzBuzz
# Fun Project (Feel free to help with my ruby studies)
# =====================================================================
# => Coded by: Marco Bomfim.
# => This Program creates a File with the given 'filename'.
# => Then stores the values of the game based on the given arguments.
# =====================================================================
prompt = "Answer: "         #Used to adquire the answers.
start = <<WELCOME
                              Welcome.
Let's make a FizzBuzz game...
A file is going to be created. So, to make sure you want to continue,
please hit RETURN. If not, please hit CTRL-C (^C).
Thank you.
WELCOME

puts "*-------------------------------------------------------------------*"
puts start
puts "*-------------------------------------------------------------------*"
$stdin.gets

puts "To Begin, please inform the filename..."
puts prompt
filename = $stdin.gets.chomp

puts "Creating the file..."

File.open(filename, 'w') { |filename|

puts "What's the first divisible number? (Between 1 and 20)"
puts prompt
X = $stdin.gets.chomp.to_i

puts "\nWhat's the second divisible number? (Between 1 and 20)"
puts prompt
Y = $stdin.gets.chomp.to_i

puts "\nNow, let's set the amount of numbers in the game: (Between 21 and 100)"
N = $stdin.gets.chomp.to_i


puts "\nBegginning the game...\n\n"

for i in 1..N do
    if (i % X == 0) && (i % Y == 0) # Beggining of the output loop
      filename.write("FB")
      filename.write(" ")

    elsif (i % X) == 0
      filename.write("F")
      filename.write(" ")

    elsif (i % Y) == 0
      filename.write("B")
      filename.write(" ")

    else
      filename.write("#{i}".to_s)
      filename.write(" ")
    end                             # End of the outputs loop
end                                 # End of the for loop

puts "The results have been stored in the file."
puts "Please, open it to see it."

puts "Thanks for playing."
}
