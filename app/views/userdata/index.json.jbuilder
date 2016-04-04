json.array!(@userdata) do |userdatum|
  json.extract! userdatum, :id, :name, :data
  json.url userdatum_url(userdatum, format: :json)
end
