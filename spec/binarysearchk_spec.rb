require 'spec_helper'

describe BinarySearchk do
    it 'creates a node with value 10' do
        tree = BinarySearchk::Node.new(10)
        expect(tree.value).to eq(10)
    end

    it 'creates a tree with children' do
        arr = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
        tree = BinarySearchk::Node.build_tree(arr)
        expect(tree.value).to eq(4)
        expect("#{tree.left.value if !tree.left.nil?}").to eq("1")
        expect("#{tree.right.value unless tree.right.nil?}").to eq("7")
        expect("#{tree.left.left.value unless tree.left.left.nil?}").to eq("")
        expect("#{tree.left.right.value unless tree.left.right.nil?}").to eq("3")
        expect("#{tree.right.left.value unless tree.right.left.nil?}").to eq("5")
        expect("#{tree.right.right.value unless tree.right.right.nil?}").to eq("23")
        expect("#{tree.right.right.left.value unless tree.right.right.left.nil?}").to eq("8")
    end

    it 'Uses BFS to search for a number' do
        arr = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
        tree = BinarySearchk::Node.build_tree(arr)
        expect(BinarySearchk::Node.breadth_first_search(7, tree)).to eq("Found 7")
    end

    it 'Uses DFS to search for a number' do
        arr = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
        tree = BinarySearchk::Node.build_tree(arr)
        expect(BinarySearchk::Node.depth_first_search(6345, tree)).to eq("Found 6345")
    end

    it 'Uses recursive DFS to search for a number' do
        arr = [1, 7, 4, 23, 8, 9, 4, 3, 5, 7, 9, 67, 6345, 324]
        tree = BinarySearchk::Node.build_tree(arr)
        expect(BinarySearchk::Node.dfs_rec(9, tree)).to eq("Found 9")
    end


end
