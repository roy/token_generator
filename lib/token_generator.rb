require "token_generator/version"
require "token_generator/generator"

module TokenGenerator
  # Your code goes here...
  def self.generate!(&validator)
    Generator.new(&validator).generate!
  end
end
