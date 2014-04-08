require_relative "coach_answer"
#TODO: Implement the program that makes you discuss with your coach from the terminal.
print "Quelque chose à dire?"
your_message = gets.chomp

print coach_answer(your_message)
