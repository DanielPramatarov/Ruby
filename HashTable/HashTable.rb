class HashTable
    def initialize
        @table = Array.new(127) {nil}
    end
    
    def hashFunc(value)
        value.sum % 127
    end

    def insert(value)
        hash = hashFunc(value)
        @table[hash] = value if @table[hash] == nil
    end
   
    def search(value)
        hash = hashFunc(value)
        if @table[hash] == nil
            puts "#{value} not found."
        else
            puts "#{value} found with hash #{hash}."
        end
    end
  
    def delete(value)
        hash = hashFunc(value)
        if @table[hash] == nil
            puts "#{value} not found!"
        else
            puts "#{value} is deleted!"
            @table[hash] = nil
        end
    end
end
    
my_ht = HashTable.new
my_ht.insert("Hello")
my_ht.insert("Solo")
my_ht.insert("Learn")
my_ht.delete("Hello")
my_ht.search("Learn")
my_ht.search("Solo")