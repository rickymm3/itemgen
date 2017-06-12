class CreateFixedItemStats < ActiveRecord::Migration
  def change
    create_table :fixed_item_stats do |t|
      t.references :magic_item_name, index: true, foreign_key: true
      t.integer :min
      t.integer :max
      t.references :stat_type, index: true, foreign_key: true
      t.boolean :is_unique
      t.integer :required_tier

      t.timestamps null: false
    end
  end
end
