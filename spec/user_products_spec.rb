require_relative '../lib/user_products'

RSpec.describe Product do
  it 'should return the matching item in the hash case' do
    subject = Bot.new
    subject.extend(Product)
    expect(subject.user_option('/iphone 5', { '/iphone 5' => '/yes 5' })).to eql('/yes 5')
  end
  it 'should return nil if the matching item is not in the hash case' do
    subject = Bot.new
    subject.extend(Product)
    expect(subject.user_option(5, { '/iphone 5' => '/yes 5' })).to eql(nil)
  end
end
