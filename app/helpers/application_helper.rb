module ApplicationHelper

  def roll_base_drops(ml,md,mf,drop_num=0)
    if drop_num == 0
      drop_num = get_number_of_base_drops(md)
    end
    common_drops = generate_common_items(drop_num,ml)

  end

  # def roll_base_drops(ml, md, mf, drop_num=0)
  #   if drop_num == 0
  #     drop_num = get_number_of_base_drops(ml,md)
  #   end
  #   # make items based on fixed list
  #   common_drops = generate_common_items(drop_num,ml)
  #   # turn white items into actual items
  #   items = generate_items(common_drops, ml, md)
  #   # change to magic/rare/unique
  #   converted_items = Array.new
  #   items.each do |item|
  #     if get_unique?(mf)
  #       converted_items.push convert_to_unique(item)
  #     elsif get_rare?(mf)
  #       converted_items.push convert_to_rare(item)
  #     elsif get_magic?(mf)
  #       converted_items.push convert_to_magic(item)
  #     else
  #       item.player_item_stats = Array.new
  #       converted_items.push item
  #     end
  #   end
  #   converted_items
  # end

  def get_number_of_base_drops(md)
    drop_num = 0
    if percent_chance(2*md*2)
      drop_num = 3
    elsif percent_chance(5*md*2)
      drop_num = 2
    elsif percent_chance(10*md*2)
      drop_num = 1
    end

    if md >= 3
      drop_num += 3
    elsif md == 2
      drop_num += rand(1..2)
    end

    drop_num
  end

  # def percent_chance(chance)
  #   chance = rand(0..90) if chance > 90
  #   random = rand(0..100)
  #   random.between?(0,chance)
  # end

  def generate_common_items(drop_num,ml)
    i = 0
    items = Array.new
    item_tier = 1
    while i < drop_num do
      if percent_chance(10)
        item_tier = 2
      end
      offset = rand((CommonItem.where(item_tier:item_tier)).count)
      items.push(CommonItem.where(item_tier:item_tier).offset(offset).first)
      i += 1
    end
    items
  end

  # def generate_items(drops, ml, md)
  #   generated_items = Array.new
  #   drops.each do |drop|
  #     # white item for now
  #     player_item = PlayerItem.new(full_name:drop.name,
  #                                  stat_value:rand(drop.min..drop.max),
  #                                  stat_type:drop.stat_type,
  #                                  item_slot:drop.item_slot)
  #     generated_items.push player_item
  #   end
  #   generated_items
  # end
  #
  # def get_unique?(mf)
  #   adjusted_mf = 1 + (mf*(0.01))
  #   percent_chance(1*adjusted_mf)
  #   false # temporary return false
  # end
  #
  # def get_rare?(mf)
  #   adjusted_mf = 1 + (mf*(0.01))
  #   percent_chance(3*adjusted_mf)
  #   false # temporary return false
  # end
  #
  # def get_magic?(mf)
  #   adjusted_mf = 1 + (mf*(0.01))
  #   percent_chance(10*adjusted_mf)
  # end
  #
  # def convert_to_rare(item)
  #   item
  # end
  #
  # def convert_to_unique(item)
  #   item
  # end
  #
  # def convert_to_magic(item)
  #   #  prefix/suffix?
  #   random = rand(1..5)
  #   magic_item_names = Array.new
  #   if random == (1 || 2)
  #     # affix
  #     magic_item_names.push get_random_affix
  #   elsif random == (3 || 4)
  #     # suffix
  #     magic_item_names.push get_random_suffix
  #   else
  #     # both
  #     magic_item_names.push get_random_affix
  #     magic_item_names.push get_random_suffix
  #   end
  #   item.item_rarity = ItemRarity.where(name:"magic").first
  #   magical_stats = Array.new
  #   magic_item_names.each do |magic_item_name|
  #     magic_stats = FixedItemStat.where(magic_item_name:magic_item_name)
  #     magic_stats.each do |magic_stat|
  #       stat_value = rand(magic_stat.min..magic_stat.max)
  #       magical_stats.push PlayerItemStat.new(player_item:item,stat_value:stat_value,stat_type:magic_stat.stat_type)
  #     end
  #     if magic_item_name.affix
  #       item.full_name = magic_item_name.name + " " + item.full_name
  #     else
  #       item.full_name = item.full_name + " " + magic_item_name.name
  #     end
  #   end
  #   item.player_item_stats = magical_stats
  #   item.item_rarity = ItemRarity.where(name:"magic").first
  #   item
  # end
  #
  # def get_random_affix()
  #   offset = rand((MagicItemName.approved_magic_names("act1", "magic", true)).count)
  #   MagicItemName.approved_magic_names("act1", "magic", true).offset(offset).first
  # end
  #
  # def get_random_suffix()
  #   offset = rand((MagicItemName.approved_magic_names("act1", "magic", false)).count)
  #   MagicItemName.approved_magic_names("act1", "magic", false).offset(offset).first
  # end

end
