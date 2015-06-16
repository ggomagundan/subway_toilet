class Api::ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception
  before_filter :make_object

  def make_object

    @json_result = JsonResult.new
    @json_result.status = true
    @json_result.msg = ""
    @json_result.object = nil
  end
end
