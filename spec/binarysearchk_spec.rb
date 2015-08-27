require 'spec_helper'

describe BinarySearchk do
    it 'creates a node with value 10' do
        node = NodeOfTree::Node.new(10)
        node.left = 3
        node.right = 11
        expect(node.value).to eq(10)
        expect(node.left).to eq(3)
        expect(node.right).to eq(11)
    end

    it 'creates a tree with children' do
        arr = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
        tree = TreeWithNode::Tree.new(arr)
        expect(tree.parent).to eq(4)
    end

    it 'Uses BFS to search for a number' do
        arr = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
        tree = TreeWithNode::Tree.new(arr)
        # tree = BinarySearchk::Node.build_tree(arr)
        expect(tree.breadth_first_search(4)).to eq("Found 4")
    end

    it 'Uses DFS to search for a number' do
        arr = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
        tree = TreeWithNode::Tree.new(arr)
        expect(tree.depth_first_search(6345)).to eq("Found 6345")
    end

    it 'Uses recursive DFS to search for a number' do
        arr = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
        tree = TreeWithNode::Tree.new(arr)
        expect(tree.dfs_rec(9)).to eq("Found 9")
    end


end
