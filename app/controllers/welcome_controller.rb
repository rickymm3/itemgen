class WelcomeController < ApplicationController
  def index
    @player_item = PlayerItem.new
  end
end
