# Implement your procedural solution here!
def is_palindrome(num)
  num.to_s == num.to_s.reverse
end

def largest_palindrome_product
  max = 0
  for i in 100..999 do
    for j in 100..999 do
      product = i*j
        if is_palindrome(product) && product > max
          max = product
        end
      end
    end
  max
end