class PlayerItemStatsController < ApplicationController
  before_action :set_player_item_stat, only: [:show, :edit, :update, :destroy]

  # GET /player_item_stats
  # GET /player_item_stats.json
  def index
    @player_item_stats = PlayerItemStat.all
  end

  # GET /player_item_stats/1
  # GET /player_item_stats/1.json
  def show
  end

  # GET /player_item_stats/new
  def new
    @player_item_stat = PlayerItemStat.new
  end

  # GET /player_item_stats/1/edit
  def edit
  end

  # POST /player_item_stats
  # POST /player_item_stats.json
  def create
    @player_item_stat = PlayerItemStat.new(player_item_stat_params)

    respond_to do |format|
      if @player_item_stat.save
        format.html { redirect_to @player_item_stat, notice: 'Player item stat was successfully created.' }
        format.json { render :show, status: :created, location: @player_item_stat }
      else
        format.html { render :new }
        format.json { render json: @player_item_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /player_item_stats/1
  # PATCH/PUT /player_item_stats/1.json
  def update
    respond_to do |format|
      if @player_item_stat.update(player_item_stat_params)
        format.html { redirect_to @player_item_stat, notice: 'Player item stat was successfully updated.' }
        format.json { render :show, status: :ok, location: @player_item_stat }
      else
        format.html { render :edit }
        format.json { render json: @player_item_stat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /player_item_stats/1
  # DELETE /player_item_stats/1.json
  def destroy
    @player_item_stat.destroy
    respond_to do |format|
      format.html { redirect_to player_item_stats_url, notice: 'Player item stat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player_item_stat
      @player_item_stat = PlayerItemStat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_item_stat_params
      params.require(:player_item_stat).permit(:stat_type_id, :stat_value, :player_item_id)
    end
end
