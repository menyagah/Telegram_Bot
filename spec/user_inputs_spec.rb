require_relative '../lib/bot'
require_relative '../lib/user_inputs'

RSpec.describe Input do
  it 'should return the choice item if the message is equal to the choice item' do
    subject = Bot.new
    subject.extend(Input)
    expect(subject.user_choice('yes 3', ['yes 1', 'yes 2', 'yes 3', 'yes 3', 'yes 4'])).to eql('yes 3')
  end
  it 'should return nil if the message is not equal to the choice item' do
    subject = Bot.new
    subject.extend(Input)
    expect(subject.user_choice('yes', ['yes 1', 'yes 2', 'yes 3', 'yes 3', 'yes 4'])).to eql(nil)
  end
end
