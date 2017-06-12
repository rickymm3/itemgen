class CreatePlayerItems < ActiveRecord::Migration
  def change
    create_table :player_items do |t|
      t.string :full_name
      t.references :item_rarity, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
