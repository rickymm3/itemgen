class AddItemTierToMagicItemName < ActiveRecord::Migration
  def change
    add_reference :magic_item_names, :item_tier, index: true, foreign_key: true
  end
end
