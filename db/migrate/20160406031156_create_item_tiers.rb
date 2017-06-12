class CreateItemTiers < ActiveRecord::Migration
  def change
    create_table :item_tiers do |t|
      t.string :name
      t.integer :multiplier

      t.timestamps null: false
    end
  end
end
