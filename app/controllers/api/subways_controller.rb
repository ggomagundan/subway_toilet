class Api::SubwaysController < Api::ApplicationController


  def index
    @subways = Subway.all
    @subways = @subways.where("subway_name like ?", "%#{params[:q]}%") if params[:q].present?
    @subways = @subways.where("subway_number like ?", "%#{params[:line]}%") if params[:line].present?


    @json_result.object = @subways
  end

  def show
    @subway = Subway.find(params[:id])
  end

end
