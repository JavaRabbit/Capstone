class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.integer :account_id
      t.integer :feed_id
      t.integer :buyPrice
      t.integer :numBought
      t.datetime :buyDate
      t.integer :sellPrice
      t.datetime :sellDate
      t.integer :netChange

      t.timestamps
    end
  end
end
