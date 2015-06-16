json.status  @json_result.status
json.msg @json_result.msg

if @json_result.object.present?
  subways = @json_result.object
  json.subways subways do |json, subway|
    json.(subway, :id, :subway_name, :subway_number, :have_toilet, :toilet_up_place, :toilet_down_place, :before_subway, :before_subway_name, :after_subway, :after_subway_name)
  end
end
