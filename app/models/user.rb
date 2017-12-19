class User < ApplicationRecord
  has_secure_password
  has_many :rides, foreign_key: :author_id

  validates :username, presence: true, uniqueness: true  
  validates :email, presence: true, uniqueness: true
end
