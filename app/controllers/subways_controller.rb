class SubwaysController < ApplicationController
  before_action :set_subway, only: [:show, :edit, :update, :destroy]

  # GET /subways
  # GET /subways.json
  def index
    @subways = Subway.all
  end

  # GET /subways/1
  # GET /subways/1.json
  def show
  end

  # GET /subways/new
  def new
    @subway = Subway.new
  end

  # GET /subways/1/edit
  def edit
  end

  # POST /subways
  # POST /subways.json
  def create
    @subway = Subway.new(subway_params)

    respond_to do |format|
      if @subway.save
        format.html { redirect_to @subway, notice: 'Subway was successfully created.' }
        format.json { render action: 'show', status: :created, location: @subway }
      else
        format.html { render action: 'new' }
        format.json { render json: @subway.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subways/1
  # PATCH/PUT /subways/1.json
  def update
    respond_to do |format|
      if @subway.update(subway_params)
        format.html { redirect_to @subway, notice: 'Subway was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @subway.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subways/1
  # DELETE /subways/1.json
  def destroy
    @subway.destroy
    respond_to do |format|
      format.html { redirect_to subways_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subway
      @subway = Subway.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subway_params
      params.require(:subway).permit(:subway_name, :subway_number)
    end
end
