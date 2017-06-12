class RemoveNameAffixFromFixedItemStats < ActiveRecord::Migration
  def change
    remove_column :fixed_item_stats, :name
    remove_column :fixed_item_stats, :affix

  end
end
