class Queue
    def initialize
        @data = []
    end

    def enqueue(value)
        @data.push(value)
    end

    def dequeue
        @data.delete_at(0)
    end

    def display
        p @data
    end
end

my_queue = Queue.new

my_queue.enqueue(3)
my_queue.enqueue(6)
my_queue.enqueue(4)
my_queue.enqueue(5)
my_queue.enqueue(9)
my_queue.display

my_queue.dequeue
my_queue.dequeue
my_queue.display