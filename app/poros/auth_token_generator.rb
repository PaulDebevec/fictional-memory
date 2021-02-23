require 'securerandom'

class AuthTokenGenerator
  def self.generate_token
    SecureRandom.base64(400)
  end
end
