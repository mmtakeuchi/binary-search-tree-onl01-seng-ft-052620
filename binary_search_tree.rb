class BST
    attr_accessor :data, :left, :right

    def initialize(data)
        @data = data
    end

    def insert(new_data)
        if new_data <= @data
            @left.nil? ? @left = BST.new(new_data) : @left.insert(new_data)
        elsif new_data > @data
            @right.nil? ? @right = BST.new(new_data) : @right.insert(new_data)
        end
    end

    def each(&block)
        left.each(&block) if left
        block.call(data)
        right.each(&block) if right
    end
end