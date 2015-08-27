module NodeOfTree
    class Node
        attr_accessor :left, :right, :value

        def initialize(v)
            @value = v
            @left = nil
            @right = nil
        end

        def insert(v)
            case value <=> v
            when 1 then insert_left(v)
            when -1 then insert_right(v)
            when 0 then
            end
        end

        def insert_left(v)
            if left.nil?
                self.left = Node.new(v)
            else
                left.insert(v)
            end
        end

        def insert_right(v)
            if right.nil?
                self.right = Node.new(v)
            else
                right.insert(v)
            end
        end
    end
end
