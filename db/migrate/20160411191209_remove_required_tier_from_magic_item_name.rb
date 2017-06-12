class RemoveRequiredTierFromMagicItemName < ActiveRecord::Migration
  def change
    remove_column :magic_item_names, :required_tier
  end
end
