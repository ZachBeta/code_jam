require './conway'
require 'spec_helper'

describe Conway do
  let(:conway) { Conway.new }

  describe 'the board' do
    it 'starts 3x3' do
      expect(conway.board.length).to eq(3)
      expect(conway.board[0].length).to eq(3)
    end
  end

  describe '#dead?' do
    it 'returns true if dead' do
      conway.board = [[0]]
      expect(conway.dead?(0,0)).to eq(true)
    end

    it 'returns false if alive' do
      conway.board = [[1]]
      expect(conway.dead?(0,0)).to eq(false)
    end
  end

  describe '#alive?' do
    it 'returns false if dead' do
      conway.board = [[1]]
      expect(conway.alive?(0,0)).to eq(true)
    end

    it 'returns true if alive' do
      conway.board = [[0]]
      expect(conway.alive?(0,0)).to eq(false)
    end
  end

  # Considerations:
  # Does this grid end at the edges
  # Does this grid wrap around as a toroid
  describe '#live_neighbor_count' do
    it 'counts living neighbors' do
      conway.board = [[0,1,0],
                      [1,0,0],
                      [0,1,0]]

      expect(conway.live_neighbor_count(1,1)).to eq(3)
    end
  end

  describe 'life and death' do
    # Any live cell with fewer than two live neighbours dies, as if caused by under-population.
    # Any live cell with two or three live neighbours lives on to the next generation.
    # Any live cell with more than three live neighbours dies, as if by overcrowding.
    # Any dead cell with exactly three live neighbours becomes a live cell, as if by reproduction.
  end
end
