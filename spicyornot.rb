def spicy_food(spice_arr, price_arr)
    #Your code here
    i=0
    new_arr = []
    spice = 0
    no_spice = 0
    while i<spice_arr.count
        if spice_arr[i] == "S"
            spice += price_arr[i]
        else
            no_spice += price_arr[i]
        end
        i+=1

    end
    spice= spice + (no_spice/2.0)
    no_spice = no_spice/2.0
    new_arr.push(spice)
    new_arr.push(no_spice)
    return new_arr

end


p spicy_food(['S', 'N', 'N', 'S'], [12, 18, 17, 15])
p spicy_food(['N'], [23])
p spicy_food(['S', 'S', 'S', 'S', 'N'], [15, 14, 19, 23, 20])
p spicy_food([], [])