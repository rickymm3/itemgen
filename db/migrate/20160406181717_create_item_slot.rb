class CreateItemSlot < ActiveRecord::Migration
  def change
    create_table :item_slots do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
