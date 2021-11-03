require 'game'

describe 'Game' do
  subject(:game) { Game.new }
  let(:player_1) { double :player }
  let(:player_2) { double :player }

  describe '#attack' do
    it 'can attack a player' do
      expect(player_2).to receive(:lose_hp)
      game.attack(player_2)
    end
  end
end