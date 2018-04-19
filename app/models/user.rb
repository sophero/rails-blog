class User < ApplicationRecord
  has_many :posts, dependent: :destroy
  validates_uniqueness_of :username
  validates_presence_of :username, :password, :email
  validates :email, confirmation: true
end
