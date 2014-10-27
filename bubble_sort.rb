def bubble_sort(input_array)
    unsort = true
    while unsort
        input_array.each_index do |i|
            if input_array[i+1] != nil && input_array[i+1] < input_array[i]
                input_array[i+1],input_array[i] = input_array[i],input_array[i+1]
                unsort = true
                break
            else
                unsort = false
            end      
        end
    end
    puts  input_array
end


bubble_sort([4,3,78,2,0,2])