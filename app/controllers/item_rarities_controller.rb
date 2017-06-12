class ItemRaritiesController < ApplicationController
  before_action :set_item_rarity, only: [:show, :edit, :update, :destroy]

  # GET /item_rarities
  # GET /item_rarities.json
  def index
    @item_rarities = ItemRarity.all
  end

  # GET /item_rarities/1
  # GET /item_rarities/1.json
  def show
  end

  # GET /item_rarities/new
  def new
    @item_rarity = ItemRarity.new
  end

  # GET /item_rarities/1/edit
  def edit
  end

  # POST /item_rarities
  # POST /item_rarities.json
  def create
    @item_rarity = ItemRarity.new(item_rarity_params)

    respond_to do |format|
      if @item_rarity.save
        format.html { redirect_to @item_rarity, notice: 'Item rarity was successfully created.' }
        format.json { render :show, status: :created, location: @item_rarity }
      else
        format.html { render :new }
        format.json { render json: @item_rarity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_rarities/1
  # PATCH/PUT /item_rarities/1.json
  def update
    respond_to do |format|
      if @item_rarity.update(item_rarity_params)
        format.html { redirect_to @item_rarity, notice: 'Item rarity was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_rarity }
      else
        format.html { render :edit }
        format.json { render json: @item_rarity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_rarities/1
  # DELETE /item_rarities/1.json
  def destroy
    @item_rarity.destroy
    respond_to do |format|
      format.html { redirect_to item_rarities_url, notice: 'Item rarity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_rarity
      @item_rarity = ItemRarity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_rarity_params
      params.require(:item_rarity).permit(:name)
    end
end
