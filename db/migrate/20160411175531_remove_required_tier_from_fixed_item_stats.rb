class RemoveRequiredTierFromFixedItemStats < ActiveRecord::Migration
  def change
    remove_column :fixed_item_stats, :required_tier
    remove_column :fixed_item_stats, :is_unique
    remove_column :fixed_item_stats, :stat_type_id
  end
end
