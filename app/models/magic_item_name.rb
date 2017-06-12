class MagicItemName < ActiveRecord::Base
  belongs_to :item_rarity
  belongs_to :item_tier
  scope :approved_magic_names, ->(act, rarity, affix) { where(item_tier:ItemTier.where(name:act),
                                                       affix:affix,
                                                       item_rarity:ItemRarity.where(name:rarity)) }

end
