# Implement your procedural solution here!
def palindrome?(number)
  string = number.to_s
  string == string.reverse 
    
end

# def largest_palindrome_product 
#   first_factor = 999 
#   second_factor = 999 
#   success = 0
#   while first_factor
#     while second_factor >=100
#       product = first_factor * second_factor
#       # puts first_factor 
#       # puts second_factor
#       # filter_parameter_loggingputs product
#       if palindrome?(product) && product > success 
#         success = product
#       end
#       second_factor -=1
     
#     end
#     first_factor -=1
#   end
#   success
# end
#check each product for being prime starting at the highest 3 digit
def largest_palindrome_product 
  number1 = 999
  number2 = 999 
  product = 0 
  while number1 > 900 
    product = number1 * number2 
    return product if palindrome?(product)
    if number2 > 900 
      number2-=1 
    else 
      number1-=1 
      number2 = number1
    end
  end
end
puts largest_palindrome_product
puts palindrome?(55)
puts palindrome?(676)