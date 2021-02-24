class User < ApplicationRecord
  has_secure_password

  validates_uniqueness_of :email
  validates_presence_of :full_name, :email, :password

  belongs_to :team, optional: true

  def generate_api_token
    token = AuthTokenGenerator.generate_token
    self.update(auth_token: token)
  end
end
