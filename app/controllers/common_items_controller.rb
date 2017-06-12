class CommonItemsController < ApplicationController
  before_action :set_common_item, only: [:show, :edit, :update, :destroy]

  # GET /common_items
  # GET /common_items.json
  def index
    @common_items = CommonItem.all
  end

  # GET /common_items/1
  # GET /common_items/1.json
  def show
  end

  # GET /common_items/new
  def new
    @common_item = CommonItem.new
  end

  # GET /common_items/1/edit
  def edit
  end

  # POST /common_items
  # POST /common_items.json
  def create
    @common_item = CommonItem.new(common_item_params)

    respond_to do |format|
      if @common_item.save
        format.html { redirect_to @common_item, notice: 'Common item was successfully created.' }
        format.json { render :show, status: :created, location: @common_item }
      else
        format.html { render :new }
        format.json { render json: @common_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /common_items/1
  # PATCH/PUT /common_items/1.json
  def update
    respond_to do |format|
      if @common_item.update(common_item_params)
        format.html { redirect_to @common_item, notice: 'Common item was successfully updated.' }
        format.json { render :show, status: :ok, location: @common_item }
      else
        format.html { render :edit }
        format.json { render json: @common_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /common_items/1
  # DELETE /common_items/1.json
  def destroy
    @common_item.destroy
    respond_to do |format|
      format.html { redirect_to common_items_url, notice: 'Common item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_common_item
      @common_item = CommonItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def common_item_params
      params.require(:common_item).permit(:name, :min, :max, :tier_id, :stat_type_id)
    end
end
