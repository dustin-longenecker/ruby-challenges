
    #Ask the user to “Give me a number:”
    #Grab that number and transform it into an Integer (since it will start out as a String). HINT: use the gets method to grab the number.
    #Set the resulting number to a variable, let’s call it Number 1
    #Add 5 to Number 1
    #Multiply the result by 2
    #Subtract 4
    #Divide by 2
    #Subtract the first number from the final number
    #Tell us the final number
puts "Give me a number: "
user_input = gets.to_i

def always_three(num)

  puts 'Always ' + (((num + 5) * 2 - 4) / 2 - num).to_s
end

always_three(user_input)
