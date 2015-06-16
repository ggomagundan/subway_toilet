json.status  @json_result.status
json.msg @json_result.msg

if @json_result.object.present?
  app_info = @json_result.object
  json.app_info do | json|
    json.(app_info, :android_version, :ios_version, :db_server, :image_server)
  end
end
