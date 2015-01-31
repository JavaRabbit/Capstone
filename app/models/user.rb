class User < ActiveRecord::Base
  has_secure_password

  has_many :accounts
  
  validates :email, presence: true, uniqueness: true
  validates_uniqueness_of :email, format: {with: /@/}
end
