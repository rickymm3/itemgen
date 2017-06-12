class ItemTiersController < ApplicationController
  before_action :set_item_tier, only: [:show, :edit, :update, :destroy]

  # GET /item_tiers
  # GET /item_tiers.json
  def index
    @item_tiers = ItemTier.all
  end

  # GET /item_tiers/1
  # GET /item_tiers/1.json
  def show
  end

  # GET /item_tiers/new
  def new
    @item_tier = ItemTier.new
  end

  # GET /item_tiers/1/edit
  def edit
  end

  # POST /item_tiers
  # POST /item_tiers.json
  def create
    @item_tier = ItemTier.new(item_tier_params)

    respond_to do |format|
      if @item_tier.save
        format.html { redirect_to @item_tier, notice: 'Item tier was successfully created.' }
        format.json { render :show, status: :created, location: @item_tier }
      else
        format.html { render :new }
        format.json { render json: @item_tier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /item_tiers/1
  # PATCH/PUT /item_tiers/1.json
  def update
    respond_to do |format|
      if @item_tier.update(item_tier_params)
        format.html { redirect_to @item_tier, notice: 'Item tier was successfully updated.' }
        format.json { render :show, status: :ok, location: @item_tier }
      else
        format.html { render :edit }
        format.json { render json: @item_tier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /item_tiers/1
  # DELETE /item_tiers/1.json
  def destroy
    @item_tier.destroy
    respond_to do |format|
      format.html { redirect_to item_tiers_url, notice: 'Item tier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_item_tier
      @item_tier = ItemTier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def item_tier_params
      params.require(:item_tier).permit(:name, :multiplier)
    end
end
