require 'player'

describe 'player name' do
  subject(:caeser) { Player.new('Caeser') }
  
  describe '#name' do
    it 'returns player name' do
      expect(subject.name).to eq 'Caeser'
    end
  end
end