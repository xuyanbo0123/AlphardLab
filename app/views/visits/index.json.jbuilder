json.array!(@visits) do |visit|
  json.extract! visit, :id, :uuid, :ip, :browser, :device
  json.url visit_url(visit, format: :json)
end
