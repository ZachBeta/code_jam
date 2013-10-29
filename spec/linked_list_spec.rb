require 'spec_helper'
require './linked_list'

describe LinkedList do
  it 'has a first node' do
    first_node = LinkedListNode.new(1)
    linked_list = LinkedList.new(first_node)
    expect(linked_list.first_node).to eq(first_node)
  end

  it 'can insert after a node' do
    node_1 = LinkedListNode.new(1)
    linked_list = LinkedList.new(node_1)
    node_2 = LinkedListNode.new(2)
    node_3 = LinkedListNode.new(3)

    linked_list.insert_after(node_1, node_3)
    linked_list.insert_after(node_1, node_2)

    expect(node_1.next_node).to eq(node_2)
    expect(node_2.next_node).to eq(node_3)
  end

  it 'can insert a first node' do
    node_1 = LinkedListNode.new(1)
    linked_list = LinkedList.new(node_1)
    node_0 = LinkedListNode.new(0)

    linked_list.insert_first(node_0)

    expect(linked_list.first_node).to eq(node_0)
    expect(node_0.next_node).to eq(node_1)
  end

  it 'can remove after a node' do
    node_1 = LinkedListNode.new(1)
    linked_list = LinkedList.new(node_1)
    node_2 = LinkedListNode.new(2)
    linked_list.insert_after(node_1, node_2)
    node_3 = LinkedListNode.new(3)
    linked_list.insert_after(node_2, node_3)

    linked_list.remove_after(node_1)
    expect(node_1.next_node).to eq(node_3)
    linked_list.remove_after(node_1)
    expect(node_1.next_node).to eq(nil)
    linked_list.remove_after(node_1)
    expect(node_1.next_node).to eq(nil)
  end

  it 'can remove the first node' do
    node_1 = LinkedListNode.new(1)
    linked_list = LinkedList.new(node_1)
    node_2 = LinkedListNode.new(2)
    linked_list.insert_after(node_1, node_2)

    linked_list.remove_first()
    expect(linked_list.first_node).to eq(node_2)
  end
end

describe LinkedListNode do
  it 'has an integer value' do
    expect(LinkedListNode.new(1).value).to eq(1)
  end

  it 'points to another node' do
    node = LinkedListNode.new
    another_node = LinkedListNode.new

    node.next_node = another_node

    expect(node.next_node).to eq(another_node)
  end
end
