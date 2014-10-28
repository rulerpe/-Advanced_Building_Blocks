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
    
    def my_count(x="c")
        count = 0
        self.my_select{|n|
            if block_given?
                count += 1 if yield(n)
            elsif x !="c"
                count += 1 if n==x
            else
                count = self.length
            end
        } 
        count
    end
    
end


[1,2,4,5,8,9,0].my_count{|x| x<4}


