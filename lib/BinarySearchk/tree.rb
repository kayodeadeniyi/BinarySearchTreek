module TreeWithNode
    class Tree
        attr_accessor :parent

        def initialize(array)
            @tree = build_tree(array)
            @parent = @tree.value
        end

        def breadth_first_search(target_value)
            queue = [@tree]
            until queue.empty?
                current_node = queue.shift
                return "Found #{current_node.value}" if current_node.value == target_value
                queue.push current_node.left unless current_node.left.nil?
                queue.push current_node.right unless current_node.right.nil?
            end
            nil
        end

        def depth_first_search(target_value)
            stack = [@tree]
            until stack.empty?
                current_node = stack.pop
                return "Found #{current_node.value}" if current_node.value == target_value
                stack.push current_node.right unless current_node.right.nil?
                stack.push current_node.left unless current_node.left.nil?
            end
            nil
        end

        def dfs_rec(target_value, node = @tree)
            if node.nil?
                return nil
            else
                return "Found #{node.value}" if node.value == target_value
                search_left_child = dfs_rec(target_value, node.left)
                search_right_child = dfs_rec(target_value, node.right)
            end
            return (search_right_child or search_left_child)
        end

        private

        def build_tree(array)
            right = array.length-1
            left=0
            index_mid = (left + (right-left)) / 2
            tree = NodeOfTree::Node.new(array[index_mid])
            array.each {|n| tree.insert(n) }
            tree
        end
    end
end
