User.create!([
  {email: "rickymm3@gmail.com", encrypted_password: "$2a$10$GJXIRPHvcCXLrjyKXW0ckeBDrihidzVgFvUpVPDk2D3FWu0RBceOO", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, sign_in_count: 1, current_sign_in_at: "2017-06-05 18:02:40", last_sign_in_at: "2017-06-05 18:02:40", current_sign_in_ip: "::1", last_sign_in_ip: "::1"}
])
CommonItem.create!([
  {name: "Wooden Sword", min: 1, max: 3, item_tier_id: 1, stat_type_id: 1, item_slot_id: 1},
  {name: "Wooden Helm", min: 1, max: 3, item_tier_id: 1, stat_type_id: 2, item_slot_id: 2},
  {name: "Bronze Sword", min: 2, max: 6, item_tier_id: 2, stat_type_id: 1, item_slot_id: 1}
])
FixedItemStat.create!([
  {magic_item_name_id: 1, min: 3, max: 3, stat_type_id: 1},
  {magic_item_name_id: 2, min: 1, max: 3, stat_type_id: 2}
])
ItemRarity.create!([
  {name: "magic"},
  {name: "common"}
])
ItemSlot.create!([
  {name: "weapon"},
  {name: "Helm"}
])
ItemTier.create!([
  {name: "act1", multiplier: 1},
  {name: "act2", multiplier: 3}
])
MagicItemName.create!([
  {name: "Of Defense", affix: false, item_rarity_id: 1, item_tier_id: 1},
  {name: "Dull", affix: true, item_rarity_id: 1, item_tier_id: 1}
])
StatType.create!([
  {name: "attack"},
  {name: "defense"}
])
