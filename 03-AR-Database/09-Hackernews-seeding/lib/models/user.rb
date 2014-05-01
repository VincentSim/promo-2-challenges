require_relative'email_validator'
class User < ActiveRecord::Base
  has_many :posts
  validates_associated :posts
  validates :name, email:, prensence: true
  validates :name, :email, uniqueness: true
end

