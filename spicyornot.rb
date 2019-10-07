
# It's Sunday, and it's time for Thai. You love spicy food, but your friend does not. 
#You will be given two ordered arrays. One array, will have 'S' and 'N' (where S means 
#spicy and N means not spicy). The other array will be the price of the dish. The 
#arrays will always be the same length. You will pay for all spicy meals, whilst you 
#and your friend will split the non-spicy dishes. Return an ordered array of your owing 
#and your friends owing.

#Note: Regardless of whether you are given an int or a float, always return a float 

def spicy_food(spice_arr, price_arr)
   
    i=0
    new_arr = []
    spice = 0
    no_spice = 0

    while i<spice_arr.count # Use while loop to calculate the total amount spent each on spicy and non-spicy food

        if spice_arr[i] == "S"
            spice += price_arr[i] # To add price of spicy food
        else
            no_spice += price_arr[i] # To add price of non-spicy food
        end
        i+=1

    end

    spice= spice + (no_spice/2.0) # Money owed by person who eats spicy food
    no_spice = no_spice/2.0 # Money owed by person who does not eat spicy food
    new_arr.push(spice)
    new_arr.push(no_spice)
    return new_arr #returns array with money owed by each party

end


p spicy_food(['S', 'N', 'N', 'S'], [12, 18, 17, 15])
p spicy_food(['N'], [23])
p spicy_food(['S', 'S', 'S', 'S', 'N'], [15, 14, 19, 23, 20])
p spicy_food([], [])