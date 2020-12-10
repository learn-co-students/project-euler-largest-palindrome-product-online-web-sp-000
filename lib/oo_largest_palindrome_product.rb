# Implement your object-oriented solution here!
class LargestPalindromeProduct
    def answer
        first_counter = 999
        second_counter = 999
        result = 0
    
        until second_counter === 100
            str = (first_counter * second_counter).to_s
            first_half = str[0..((str.size-1)/2.floor)]
            second_half = str[first_half.size..str.size-1].split("").reverse.join("")
    
            if result < (second_counter * first_counter)
                if first_half === second_half || first_half[0..first_half.size-2] === second_half
                    result = first_counter * second_counter
                end
            end 
    
            first_counter -= 1
            
            if first_counter === 99
                second_counter -= 1
                first_counter = 999
            end
        end
    
        result
    end
end