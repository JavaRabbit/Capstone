class Account < ActiveRecord::Base
  belongs_to :user
  has_many :transactions

  has_many :alerts, as: :alertable
end
