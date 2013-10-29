require 'spec_helper'
require 'stack'

describe Stack do
  describe '#push' do
    it 'returns the value pushed' do
      stack = Stack.new
      expect(stack.push(1)).to eq(1)
    end
  end

  describe '#top' do
    it 'peeks at the top value' do
      stack = Stack.new
      stack.push(1)

      expect(stack.top).to eq(1)
    end
  end

  describe '#pop' do
    it 'removes the top value and returns it' do
      stack = Stack.new
      stack.push(1)

      expect(stack.pop).to eq(1)
      expect(stack.top).to eq(nil)
    end
  end

  describe '#is_empty?' do
    it 'returns true if empty' do
      stack = Stack.new
      stack.push(1)

      expect(stack.is_empty?).to eq(false)
      stack.pop
      expect(stack.is_empty?).to eq(true)
    end
  end
end
