class PlayerItem < ActiveRecord::Base
  belongs_to :item_rarity
  belongs_to :user
  belongs_to :stat_type
  belongs_to :item_slot
  has_many :player_item_stats
  attr_accessor :monster_level
  attr_accessor :monster_difficulty
end
