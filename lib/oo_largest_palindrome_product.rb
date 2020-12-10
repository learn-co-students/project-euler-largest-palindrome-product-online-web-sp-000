# Implement your object-oriented solution here!
class LargestPalindromeProduct

  def self.is_palindrome(num)
    num.to_s == num.to_s.reverse
  end
  
  def answer
    max = 0
    for i in 100..999 do
      for j in 100..999 do
        product = i*j
          if self.class.is_palindrome(product) && product > max
            max = product
          end
        end
      end
    puts max
    max
  end
end