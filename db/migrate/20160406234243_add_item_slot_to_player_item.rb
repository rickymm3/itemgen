class AddItemSlotToPlayerItem < ActiveRecord::Migration
  def change
    add_reference :player_items, :item_slot, index: true, foreign_key: true
  end
end
