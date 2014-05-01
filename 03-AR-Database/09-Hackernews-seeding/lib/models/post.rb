require_relative'email_validator'

class Post < ActiveRecord::Base
  belongs_to :user
  validate :name, :date, :source_url, :rating, :user, presence: true
  validate :name, uniqueness: true
  validate :rating, numericality: {greater_than_or_equal_to: 0, message: "Must be greater than 0!!"}
end