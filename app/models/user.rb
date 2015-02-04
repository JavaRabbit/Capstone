class User < ActiveRecord::Base
  has_secure_password

  has_many :accounts
  has_many :user_feeds
  has_many :feeds, through: :user_feeds

  validates :email, presence: true, uniqueness: true
  validates_uniqueness_of :email, format: {with: /@/}
end
