class CreatePlayerItemStats < ActiveRecord::Migration
  def change
    create_table :player_item_stats do |t|
      t.references :stat_type, index: true, foreign_key: true
      t.integer :stat_value
      t.references :player_item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
