require '../lib/bot'
require '../lib/user_inputs'

describe Input do
    describe "#user_choice" do
        it "should return the choice item if the message is equal to the choice item" do
            expect(subject.user_choice('yes 3',['yes 1','yes 2','yes 3','yes 3','yes 4'])).to eql('yes 3')
        end
    end
end

describe Bot do

    it{ expect(described_class).to be < Input}

    
end