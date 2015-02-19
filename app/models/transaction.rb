class Transaction < ActiveRecord::Base
  belongs_to :account

  has_many :alerts, as: :alertable
end
