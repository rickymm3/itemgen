class MagicItemNamesController < ApplicationController
  before_action :set_magic_item_name, only: [:show, :edit, :update, :destroy]

  # GET /magic_item_names
  # GET /magic_item_names.json
  def index
    @magic_item_names = MagicItemName.all
  end

  # GET /magic_item_names/1
  # GET /magic_item_names/1.json
  def show
  end

  # GET /magic_item_names/new
  def new
    @magic_item_name = MagicItemName.new
  end

  # GET /magic_item_names/1/edit
  def edit
  end

  # POST /magic_item_names
  # POST /magic_item_names.json
  def create
    @magic_item_name = MagicItemName.new(magic_item_name_params)

    respond_to do |format|
      if @magic_item_name.save
        format.html { redirect_to @magic_item_name, notice: 'Magic item name was successfully created.' }
        format.json { render :show, status: :created, location: @magic_item_name }
      else
        format.html { render :new }
        format.json { render json: @magic_item_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /magic_item_names/1
  # PATCH/PUT /magic_item_names/1.json
  def update
    respond_to do |format|
      if @magic_item_name.update(magic_item_name_params)
        format.html { redirect_to @magic_item_name, notice: 'Magic item name was successfully updated.' }
        format.json { render :show, status: :ok, location: @magic_item_name }
      else
        format.html { render :edit }
        format.json { render json: @magic_item_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /magic_item_names/1
  # DELETE /magic_item_names/1.json
  def destroy
    @magic_item_name.destroy
    respond_to do |format|
      format.html { redirect_to magic_item_names_url, notice: 'Magic item name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_magic_item_name
      @magic_item_name = MagicItemName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def magic_item_name_params
      params.require(:magic_item_name).permit(:name, :affix)
    end
end
