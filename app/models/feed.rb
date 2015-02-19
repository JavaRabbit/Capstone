class Feed < ActiveRecord::Base
  has_many :user_feeds
  has_many :users, through: :user_feeds
  has_many :transactions

  has_many :alerts, as: :alertable
end
