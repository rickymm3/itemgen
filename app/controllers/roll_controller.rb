class RollController < ApplicationController
  def generate_drops
    ml = params['monster_level'].to_i
    md = params['monster_difficulty'].to_i
    mf = params['magic_find'].to_i
    @generated_items = roll_base_drops(ml, md, mf, 0)
  end
end