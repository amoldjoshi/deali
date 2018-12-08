class DealHuntersController < ApplicationController
  before_action :set_deal_hunter, only: [:show, :edit, :update, :destroy]

  # GET /deal_hunters
  # GET /deal_hunters.json
  def index
    @deal_hunters = DealHunter.all
  end

  # GET /deal_hunters/1
  # GET /deal_hunters/1.json
  def show
  end

  # GET /deal_hunters/new
  def new
    @deal_hunter = DealHunter.new
  end

  # GET /deal_hunters/1/edit
  def edit
  end

  # POST /deal_hunters
  # POST /deal_hunters.json
  def create
    @deal_hunter = DealHunter.new(deal_hunter_params)

    respond_to do |format|
      if @deal_hunter.save
        format.html { redirect_to @deal_hunter, notice: 'Deal hunter was successfully created.' }
        format.json { render :show, status: :created, location: @deal_hunter }
      else
        format.html { render :new }
        format.json { render json: @deal_hunter.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /deal_hunters/1
  # PATCH/PUT /deal_hunters/1.json
  def update
    respond_to do |format|
      if @deal_hunter.update(deal_hunter_params)
        format.html { redirect_to @deal_hunter, notice: 'Deal hunter was successfully updated.' }
        format.json { render :show, status: :ok, location: @deal_hunter }
      else
        format.html { render :edit }
        format.json { render json: @deal_hunter.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /deal_hunters/1
  # DELETE /deal_hunters/1.json
  def destroy
    @deal_hunter.destroy
    respond_to do |format|
      format.html { redirect_to deal_hunters_url, notice: 'Deal hunter was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_deal_hunter
      @deal_hunter = DealHunter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def deal_hunter_params
      params.require(:deal_hunter).permit(:HunterID, :HunterName, :HunterCategory, :IsHunterFavorite?, :HunterTargetUrl)
    end
end
