class CreateFeeds < ActiveRecord::Migration
  def change
    create_table :feeds do |t|
      t.string :ticker

      t.timestamps
    end
  end
end
