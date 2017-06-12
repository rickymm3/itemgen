class AddStuffToMagicItemName < ActiveRecord::Migration
  def change
    add_reference :magic_item_names, :item_rarity, index: true, foreign_key: true
    add_column :magic_item_names, :required_tier, :integer
  end
end
