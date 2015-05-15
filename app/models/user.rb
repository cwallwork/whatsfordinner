class User < ActiveRecord::Base
  before_save {self.email = email.downcase}
  has_many :recipes
  EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, uniqueness: {case_sensitive: false}, length: {maximum: 255}, presence: true, format: {with: EMAIL_REGEX}
  validates :password, length: {minimum: 7}
  has_secure_password
end
