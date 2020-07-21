require 'spec_helper'

describe 'String' do
  describe '#<<' do
    it 'apeends a character' do
      s = 'ABC'
      s << 'D'
      expect(s.size).to eq(4)
    end

    example 'nilは追加できない', :exception do
      s = 'ABC'
      expect { s << nil }.to raise_error(TypeError)
    end
  end
end
