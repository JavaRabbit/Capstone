class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :name
      t.text :description
      t.datetime :startDate
      t.integer :startBalance
      t.integer :currentBalance
      t.datetime :closeDate
      t.integer :closeBalance

      t.timestamps
    end
  end
end
