module BinarySearchk
    class Node
        attr_accessor :left, :right, :value

        def initialize(v=nil)
            @value = v
            @left = nil
            @right = nil
        end

        def insert(v)
            case value <=> v
            when 1 then insert_left(v)
            when -1 then insert_right(v)
            when 0 then false
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

      def self.build_tree(array)
          right = array.length-1
          left=0

          index_mid = (left + (right-left)) / 2
          @node = Node.new(array[index_mid])
          array.each {|v| @node.insert(v) }

          @node
      end

      def self.breadth_first_search(target_value, node)
          queue = [node]
          until queue.empty?
              current_node = queue.shift
              return "Found #{current_node.value}" if current_node.value == target_value
              queue.push current_node.left unless current_node.left.nil?
              queue.push current_node.right unless current_node.right.nil?
          end
          nil
      end

      def self.depth_first_search(target_value, node)
          stack = [node]
          until stack.empty?
              current_node = stack.pop
              return "Found #{current_node.value}" if current_node.value == target_value
              stack.push current_node.right unless current_node.right.nil?
              stack.push current_node.left unless current_node.left.nil?
          end
          nil
      end

      def self.dfs_rec(target_value, node)
          if node.nil?
              return nil
          else
              return "Found #{node.value}" if node.value == target_value
              search_left_child = dfs_rec(target_value, node.left)
              search_right_child = dfs_rec(target_value, node.right)
          end
          #return any of the two that is not nil
          return (search_right_child or search_left_child)
          nil
	end
  end
end
