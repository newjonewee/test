json.array!(@derps) do |derp|
  json.extract! derp, :id, :title, :derp
  json.url derp_url(derp, format: :json)
end
