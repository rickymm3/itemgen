class PlayerItemsController < ApplicationController
  before_action :set_player_item, only: [:show, :edit, :update, :destroy]

  # GET /player_items
  # GET /player_items.json
  def index
    @player_items = PlayerItem.all
  end

  # GET /player_items/1
  # GET /player_items/1.json
  def show
  end

  # GET /player_items/new
  def new
    @player_item = PlayerItem.new
  end

  # GET /player_items/1/edit
  def edit
  end

  # POST /player_items
  # POST /player_items.json
  def create
    monster_level = player_item_params['monster_level'].to_i
    monster_difficulty = player_item_params['monster_difficulty'].to_i
    @base_drops = roll_base_drops(monster_level, monster_difficulty)

    @player_item = PlayerItem.new(player_item_params)

    respond_to do |format|
      if @base_drops
        format.html { redirect_to @player_item, notice: "Items Generated" }
        format.json { render :show, status: :created, location: @player_item }
      else
        format.html { render :new }
        format.json { render json: @player_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_items/1
  # PATCH/PUT /player_items/1.json
  def update
    respond_to do |format|
      if @player_item.update(player_item_params)
        format.html { redirect_to @player_item, notice: 'Player item was successfully updated.' }
        format.json { render :show, status: :ok, location: @player_item }
      else
        format.html { render :edit }
        format.json { render json: @player_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_items/1
  # DELETE /player_items/1.json
  def destroy
    @player_item.destroy
    respond_to do |format|
      format.html { redirect_to player_items_url, notice: 'Player item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_item
      @player_item = PlayerItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_item_params
      params.require(:player_item).permit(:full_name, :item_rarity_id, :user_id, :item_tier, :monster_level, :monster_difficulty)
    end
end
