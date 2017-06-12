class AddStatTypeToPlayerItem < ActiveRecord::Migration
  def change
    add_reference :player_items, :stat_type, index: true, foreign_key: true
  end
end
