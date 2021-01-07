require_relative '../lib/bot'
require_relative '../lib/user_inputs'

describe Input do
  describe '#user_choice' do
    it 'should return the choice item if the message is equal to the choice item' do
      expect(subject.user_choice('yes 3', ['yes 1', 'yes 2', 'yes 3', 'yes 3', 'yes 4'])).to eql('yes 3')
    end
    it 'should return nil if the message is not equal to the choice item' do
      expect(subject.user_choice('yes', ['yes 1', 'yes 2', 'yes 3', 'yes 3', 'yes 4'])).to eql(nil)
    end
  end
  describe '#user_option' do
    it 'should return the matching item in the hash case' do
      expect(subject.user_option('/iphone 5')).to eql('/yes 5')
    end
    it 'should return nil if the matching item is not in the hash case' do
      expect(subject.user_option(5)).to eql(nil)
    end
  end
end


