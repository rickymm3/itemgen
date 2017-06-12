class CommonItem < ActiveRecord::Base
  belongs_to :item_tier
  belongs_to :stat_type
  belongs_to :item_slot
end
