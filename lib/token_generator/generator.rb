require 'securerandom'

module TokenGenerator
  class Generator
    attr_accessor :validator

    def initialize(&validator)
      @validator = validator 
    end

    def generate!
      begin
        token = SecureRandom.hex(8)
      end until validator.call(token)
      token
    end
  end
end
