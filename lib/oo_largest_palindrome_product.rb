class LargestPalindromeProduct
    def answer
        a = 100
        palindrome = []
        while a < 1000
           for b in 100..999 do
               c = a * b
               # Check if the product is a palindrome
               ## Convert the product to a string
               c_str = c.to_s
               ## Count the string
               char_to_slice = (c_str.length / 2).floor
               ## Split the string - Get the first half
               first_half = c_str[0..char_to_slice-1]
               ## Split the string - Get the second half in reverse order
               second_half = c_str[-1 * char_to_slice..]
               ## Compare above strings
               if first_half == second_half.reverse
                   ## If the same, then update palindrom result               
                   palindrome.push(c)
               end
           end
           a += 1
       end 
       palindrome.max
    end
end