module Luhn
    def self.is_valid?(number)
      #WRITE YOUR SOLUTION HERE
      digits = []

      while number != 0 do
        number, last_digit = number.divmod(10)
        digits << last_digit
      end
    
      #double every second digit
      toggle = false
      sum = 0
      digits.each { |x|
       
        if toggle
            toggle = false
            x = x * 2
            if (x >= 10 ) 
                 x = x - 9
            end
        else
            toggle = true
        end
       
        sum = sum + x
      }
      
      if  ( sum % 10 ) == 0
        return true
      else
        return false
      end
      
    end
  end

  