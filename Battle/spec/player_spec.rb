require 'player'

describe Player do
  subject(:slash) { described_class.new('Slash') }
  subject(:santana) { described_class.new('Santana') }

  it 'returns player name' do
   expect(slash.name).to eq 'Slash'
  end

  it 'displays default tunage' do
    expect(slash.tunage).to eq described_class::DEFAULT_TUNAGE
  end
end
