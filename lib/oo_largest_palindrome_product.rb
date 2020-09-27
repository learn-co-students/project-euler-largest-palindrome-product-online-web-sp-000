class LargestPalindromeProduct

  def answer
    palindrome = -1

    for num1 in (100..999)
      for num2 in (100..999)
        product = num1 * num2

        if is_palindrome?(product) && product > palindrome
          palindrome = product
        end
      end
    end

    palindrome
  end

  def is_palindrome?(input)
    input.to_s == input.to_s.reverse
  end
end
