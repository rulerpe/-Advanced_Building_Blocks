class Array
    def my_each
        i = 0
        while i < self.size
            yield(self[i])  
            i+=1      
        end
        self
    end
    
    def my_each_with_index
        i =0
        while i < self.size
            yield(self[i],i)
            i+=1
        end
        self
    end
    
    def my_select
        new_arr = []
         self.my_each{|n|
            if yield(self[n])
                new_arr << self[n]
            end
         }
         new_arr
    end
    
end

[1,2,4,3,5,2].my_select{|x| x%2 != 0}

