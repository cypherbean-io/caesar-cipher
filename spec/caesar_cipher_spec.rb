# frozen_string_literal: true

require_relative '../lib/caesar_cipher'

describe CaesarCipher do
  let(:cipher) { CaesarCipher.new }

  describe '#encrypt' do
    it 'shifts letters by the specified amount' do
      expect(cipher.encrypt('abc', 3)).to eq('def')
    end

    it 'handles uppercase letters' do
      expect(cipher.encrypt('ABC', 3)).to eq('DEF')
    end

    it 'wraps around the alphabet' do
      expect(cipher.encrypt('z', 1)).to eq('a')
    end

    it 'leaves non-letter characters unchanged' do
      expect(cipher.encrypt('abc123', 3)).to eq('def123')
    end

    it 'handles negative shifts' do
      expect(cipher.encrypt('abc', -3)).to eq('xyz')
    end
  end
end
