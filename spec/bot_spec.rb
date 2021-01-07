require_relative '../lib/bot'

describe Bot do
    it "Should inherit Input class" do
         expect(described_class).to be < Input 
    end
end