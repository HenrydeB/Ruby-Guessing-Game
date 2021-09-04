# Get my Number Game
# First Ruby project

puts "Welcome to 'Get My Number'"
print "What's Your Name? "

input = gets

name = input.chomp

puts "Welcome, #{name} !"

# Store a random number for the player to guess

puts "I have a random number!"
puts "Can you guess it?"

target = rand(100) + 1

# Calculate number of guesses
num_guesses = 0

# track whether the player guessed correctly
guessed_it = false

until num_guesses == 10 || guessed_it 
    puts "Youve got #{10- num_guesses} guesses left"
    print "Make a guess "
    guess = gets.to_i

    num_guesses += 1

    # Compare the guess to the target.
    # Print the appropriate message.
    if guess < target
        puts "Not quite, too low!"
    elsif guess > target 
        puts "Close! Too high though"
    elsif guess == target
        puts "Congrats #{name}!"
        puts "You guessed my number in #{num_guesses} guesses"
        guessed_it = true
    end
end
# If the player did not guess it in the allotted number of guesses, print
unless guessed_it
    puts "Sorry, you didn't guess my number! (it was #{target} )"
end