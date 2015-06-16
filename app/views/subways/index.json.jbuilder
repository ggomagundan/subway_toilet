json.array!(@subways) do |subway|
  json.extract! subway, :id, :subway_name, :subway_number
  json.url subway_url(subway, format: :json)
end
