class Api::AppInfosController < Api::ApplicationController
  def index
    @json_result.object = AppInfo.last
  end

end
