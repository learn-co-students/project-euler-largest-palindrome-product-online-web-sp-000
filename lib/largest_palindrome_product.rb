# Implement your procedural solution here!

def largest_palindrome_product
  i, a, b = 0, 999, 999
  while a >= 100 && b >= 100
    result = a * b
    result_string = result.to_s
    return result if result_string == result_string.reverse
    i += 1
    if i < 100
      a -= 1
    else
      i = 0
      b -= 1
      a = b
    end
  end
end
