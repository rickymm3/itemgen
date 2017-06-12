class AddStatValueToPlayerItem < ActiveRecord::Migration
  def change
    add_column :player_items, :stat_value, :integer
  end
end
