class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.decimal :high
      t.decimal :low
      t.boolean :sent
      t.integer :alertable_id
      t.string :alertable_type

      t.timestamps
    end
  end
end
