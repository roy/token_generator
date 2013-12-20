require_relative '../lib/token_generator'

describe TokenGenerator do
  context "#generate!" do
    it "generates a valid token" do
      tokens = (1..10).map { SecureRandom.hex(8) }
      validator = ->(x){ !tokens.include?(x) }

      token = TokenGenerator.generate!(&validator)
      token.should_not be_nil

      token.length.should == 16
      tokens.should_not include(token)
    end
  end
end
