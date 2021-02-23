class User < ApplicationRecord
  has_secure_password

  validates_uniqueness_of :email
  validates_presence_of :email
  validates_presence_of :password

  def generate_api_token
    token = AuthTokenGenerator.generate_token
    self.update(auth_token: token)
  end
end
