#Code up your own calculator from the lecture. Make sure you can run it from the command line. Save the calculator file in a directory, and initialize the directory as a git repository. Make sure this isn't nested in another existing git repository. Then, push this git repository to Github.

#Hint: review this section on “do/while” loops on how to keep asking for input until some condition is met: http://www.gotealeaf.com/books/ruby/read/loops_iterators#dowhileloops

# require "pry"
# binding.pry

options = ["A", "B", "C", "D"]

def actions
  puts "Please choose one of these options and hit Enter: "
  puts "  A) add" 
  puts "  B) subtract" 
  puts "  C) multiply" 
  puts "  D) divide"
end

puts "Enter your first number: "
num1 = gets.chomp

puts "Enter your second number: "
num2 = gets.chomp

actions
operator = gets.chomp
logic = options.include? operator.upcase

while logic == false
  puts "I'm sorry, your selection was not valid."
  actions
  operator = gets.chomp
  logic = options.include? operator.upcase
end#while

if operator.upcase == "A"
  result = num1.to_i + num2.to_i
  puts "#{num1} + #{num2} = #{result}"
elsif operator.upcase == "B"
  result = num1.to_i - num2.to_i
  puts "#{num1} - #{num2} = #{result}"
elsif operator.upcase == "C"
  result = num1.to_i * num2.to_i
  puts "#{num1} x #{num2} = #{result}"
else
  result = num1.to_f / num2.to_f
  puts "#{num1} / #{num2} = #{result}"
end

