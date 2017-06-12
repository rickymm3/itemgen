class FixedItemStatsController < ApplicationController
  before_action :set_fixed_item_stat, only: [:show, :edit, :update, :destroy]

  # GET /fixed_item_stats
  # GET /fixed_item_stats.json
  def index
    @fixed_item_stats = FixedItemStat.all
  end

  # GET /fixed_item_stats/1
  # GET /fixed_item_stats/1.json
  def show
  end

  # GET /fixed_item_stats/new
  def new
    @fixed_item_stat = FixedItemStat.new
  end

  # GET /fixed_item_stats/1/edit
  def edit
  end

  # POST /fixed_item_stats
  # POST /fixed_item_stats.json
  def create
    @fixed_item_stat = FixedItemStat.new(fixed_item_stat_params)

    respond_to do |format|
      if @fixed_item_stat.save
        format.html { redirect_to @fixed_item_stat, notice: 'Fixed item stat was successfully created.' }
        format.json { render :show, status: :created, location: @fixed_item_stat }
      else
        format.html { render :new }
        format.json { render json: @fixed_item_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /fixed_item_stats/1
  # PATCH/PUT /fixed_item_stats/1.json
  def update
    respond_to do |format|
      if @fixed_item_stat.update(fixed_item_stat_params)
        format.html { redirect_to @fixed_item_stat, notice: 'Fixed item stat was successfully updated.' }
        format.json { render :show, status: :ok, location: @fixed_item_stat }
      else
        format.html { render :edit }
        format.json { render json: @fixed_item_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /fixed_item_stats/1
  # DELETE /fixed_item_stats/1.json
  def destroy
    @fixed_item_stat.destroy
    respond_to do |format|
      format.html { redirect_to fixed_item_stats_url, notice: 'Fixed item stat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_fixed_item_stat
      @fixed_item_stat = FixedItemStat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def fixed_item_stat_params
      params.require(:fixed_item_stat).permit(:magic_item_name_id, :min, :max, :stat_type_id, :is_unique, :required_tier)
    end
end
