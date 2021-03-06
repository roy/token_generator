require 'securerandom'

module TokenGenerator
  class Generator
    attr_accessor :validator

    def initialize(&validator)
      @validator = validator 
    end

    def generate!
      begin
        token = SecureRandom.urlsafe_base64(12)
      end until validator.call(token)
      token
    end
  end
end
