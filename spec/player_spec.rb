require 'player'

describe 'player name' do
  subject(:ryan) { Player.new('Ryan') }
  subject(:caeser) { Player.new('Caeser') }
  
  describe '#name' do
    it 'returns player name' do
      expect(subject.name).to eq 'Caeser'
    end
  end

  describe '#hp' do
    it 'returns player hp' do
      expect(subject.hp).to eq Player::DEFAULT_HP
    end
  end

  describe '#attack' do
    it 'reduces other players hp by 10' do
      expect{ ryan.attack(caeser) }.to change { caeser.hp }.by(-10)
    end
  end

  describe '#lose_hp' do
    it 'reduces victims hp by 10' do
      expect{ caeser.lose_hp }.to change { caeser.hp }.by(-10)
    end
  end
end