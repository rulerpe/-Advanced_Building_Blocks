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
        new_arr = Array.new
         self.my_each{|n|
            if yield(n)
                new_arr << n
            end
         }
         new_arr
    end

    def my_all?        
        self == self.my_select{|x| yield(x)}
    end
    
    def my_none?       
        new_arr = Array.new 
        new_arr == self.my_select{|x| yield(x)}
    end
    
end

[1,2,3,4,5,6,7].my_none?{|x| x<5}

