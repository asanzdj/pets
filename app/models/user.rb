class User < ActiveRecord::Base
  has_secure_password

  validates :login, presence: true, :uniqueness => {:scope => [:login, :password_digest]}
  validates :password_digest, presence: true
  validates :password_confirmation, presence: true
end
