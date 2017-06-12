class AddStatTypeToFixedItemStats < ActiveRecord::Migration
  def change
    add_reference :fixed_item_stats, :stat_type, index: true, foreign_key: true
  end
end
