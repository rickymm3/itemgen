class AddItemSlotsToCommonItem < ActiveRecord::Migration
  def change
    add_reference :common_items, :item_slot, index: true, foreign_key: true
  end
end
