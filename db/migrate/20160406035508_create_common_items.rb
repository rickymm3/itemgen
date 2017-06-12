class CreateCommonItems < ActiveRecord::Migration
  def change
    create_table :common_items do |t|
      t.string :name
      t.integer :min
      t.integer :max
      t.references :item_tier, index: true, foreign_key: true
      t.references :stat_type, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
