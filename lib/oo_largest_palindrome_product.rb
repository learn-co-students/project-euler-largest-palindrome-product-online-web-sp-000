# Implement your object-oriented solution here!
class LargestPalindromeProduct 
  
  attr_accessor :answer
  
  def initialize 
    @answer = self.largest_palindrome_product
  end
  
  def palindrome?(number)
    if number.to_s == number.to_s.reverse 
      return true 
    else 
      false
    end
  end 
  
  def largest_palindrome_product 
    num1 = 999 
    num2 = 999 
    product = 0 
    while num1 > 900 
      product = num1 * num2 
      if self.palindrome?(product)
        return product 
        
      end 
      if num2 > 900 
        num2-=1 
      else 
        num1-=1 
        num2 = num1 
      end
    end
  end
end

puts 