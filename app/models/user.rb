class User < ActiveRecord::Base
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  has_many :ideas
  has_many :roles
  has_one :platform
  validates :email, presence: true, length: { maximum: 255 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  before_save { self.email = email.downcase }
  validates :user, presence: true
  validates :password, length: { minimum: 6 },:on => :create
  has_secure_password
  ## has_many :jobs 
end
