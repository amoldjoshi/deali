class WeeklyAddsController < ApplicationController
  before_action :set_weekly_add, only: [:show, :edit, :update, :destroy]

  # GET /weekly_adds
  # GET /weekly_adds.json
  def index
    @weekly_adds = WeeklyAdd.all
  end

  # GET /weekly_adds/1
  # GET /weekly_adds/1.json
  def show
  end

  # GET /weekly_adds/new
  def new
    @weekly_add = WeeklyAdd.new
  end

  # GET /weekly_adds/1/edit
  def edit
  end

  # POST /weekly_adds
  # POST /weekly_adds.json
  def create
    @weekly_add = WeeklyAdd.new(weekly_add_params)

    respond_to do |format|
      if @weekly_add.save
        format.html { redirect_to @weekly_add, notice: 'Weekly add was successfully created.' }
        format.json { render :show, status: :created, location: @weekly_add }
      else
        format.html { render :new }
        format.json { render json: @weekly_add.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weekly_adds/1
  # PATCH/PUT /weekly_adds/1.json
  def update
    respond_to do |format|
      if @weekly_add.update(weekly_add_params)
        format.html { redirect_to @weekly_add, notice: 'Weekly add was successfully updated.' }
        format.json { render :show, status: :ok, location: @weekly_add }
      else
        format.html { render :edit }
        format.json { render json: @weekly_add.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weekly_adds/1
  # DELETE /weekly_adds/1.json
  def destroy
    @weekly_add.destroy
    respond_to do |format|
      format.html { redirect_to weekly_adds_url, notice: 'Weekly add was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weekly_add
      @weekly_add = WeeklyAdd.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def weekly_add_params
      params.require(:weekly_add).permit(:AddID, :AddName, :AddCategory, :IsAddFavorite?, :AddTargetUrl, :logo)
    end
end
