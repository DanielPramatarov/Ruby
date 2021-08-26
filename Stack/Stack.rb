class Stack
    def initialize
        @data = []
    end

    def push(value)
        @data.push(value)
    end

    def pop
        @data.pop
    end

    def display
        p @data
    end
end

my_stack = Stack.new

my_stack.push(4)
my_stack.push(5)
my_stack.push(9)
my_stack.push(3)
my_stack.push(6)
my_stack.display

my_stack.pop
my_stack.pop
my_stack.display