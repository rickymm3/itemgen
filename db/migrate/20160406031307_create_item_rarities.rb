class CreateItemRarities < ActiveRecord::Migration
  def change
    create_table :item_rarities do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
