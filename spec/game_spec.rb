require 'game'

describe 'Game' do
  subject(:game) { Game.new(player_one, player_two) }
  let(:player_one) { double :player }
  let(:player_two) { double :player }

  describe '#initialize' do
    it 'accepts player one' do
      expect(game.player_one).to eq player_one
    end

    it 'accepts player two' do
      expect(game.player_two).to eq player_two
    end
  end
  
  describe '#attack' do
    it 'can attack a player' do
      expect(player_two).to receive(:lose_hp)
      game.attack(player_two)
    end
  end
end