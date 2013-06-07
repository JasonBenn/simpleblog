class User < ActiveRecord::Base
  has_many :posts
  validates :email, :password, presence: true
end
