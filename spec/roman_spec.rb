require 'roman'

describe Roman do
  let(:roman) {Roman.new}
  describe 'given an input of 1' do
    it 'returns I' do
      expect(roman.convert(1)).to eq('I')
    end
  end

  describe 'given an input of 2' do
    it 'returns II' do
      expect(roman.convert(2)).to eq('II')
    end
  end

  describe 'given an input of 3' do
    it 'returns III' do
      expect(roman.convert(3)).to eq('III')
    end
  end

  describe 'given an input of 4' do
    it 'returns IV' do
      expect(roman.convert(4)).to eq('IV')
    end
  end

  describe 'given an input of 5' do
    it 'returns V' do
      expect(roman.convert(5)).to eq('V')
    end
  end

  describe 'given an input of 6' do
    it 'returns VI' do
      expect(roman.convert(6)).to eq('VI')
    end
  end

  describe 'given an input of 9' do
    it 'returns IX' do
      expect(roman.convert(9)).to eq('IX')
    end
  end

  describe 'given an input of 10' do
    it 'returns X' do
      expect(roman.convert(10)).to eq('X')
    end
  end

  describe 'given an input of 12' do
    it 'returns XII' do
      expect(roman.convert(12)).to eq('XII')
    end
  end

  describe 'given an input of 11' do
    it 'returns XI' do
      expect(roman.convert(11)).to eq('XI')
    end
  end

  describe 'given an input of 50' do
    it 'returns L' do
      expect(roman.convert(50)).to eq('L')
    end
  end

  describe 'given an input of 100' do
    it 'returns C' do
      expect(roman.convert(100)).to eq('C')
    end
  end

  describe 'given an input of 500' do
    it 'returns D' do
      expect(roman.convert(500)).to eq('D')
    end
  end

  describe 'given an input of 1000' do
    it 'returns M' do
      expect(roman.convert(1000)).to eq('M')
    end
  end

  describe 'given an input of 550' do
    it 'returns DL' do
      expect(roman.convert(550)).to eq('DL')
    end
  end

  describe 'given an input of 1500' do
    it 'returns MD' do
      expect(roman.convert(1500)).to eq('MD')
    end
  end
end
