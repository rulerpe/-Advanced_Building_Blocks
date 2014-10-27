def bubble_sort_by(input_array)
       input_array.each_index do |i|
            if input_array[i+1]!=nil
                if yield(input_array[i],input_array[i+1]) <0
                    input_array[i],input_array[i+1] = input_array[i+1],input_array[i]
                    redo
                end
            end
        end
        p input_array
end

bubble_sort_by(["hi","yyoooaoao","hello","hey","hahah"]) do |left,right|
    right.length - left.length
end
