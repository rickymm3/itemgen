class AddNameToFixedItemStat < ActiveRecord::Migration
  def change
    add_column :fixed_item_stats, :name, :string
    add_column :fixed_item_stats, :affix, :boolean
  end
end
