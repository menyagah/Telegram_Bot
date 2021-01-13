require_relative '../lib/user_products'

describe Product do 
    describe '#user_option' do
    it 'should return the matching item in the hash case' do
      expect(subject.user_option('/iphone 5')).to eql('/yes 5')
    end
    it 'should return nil if the matching item is not in the hash case' do
      expect(subject.user_option(5)).to eql(nil)
    end
  end
end