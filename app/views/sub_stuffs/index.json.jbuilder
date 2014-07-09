json.array!(@sub_stuffs) do |sub_stuff|
  json.extract! sub_stuff, :id, :name
  json.url sub_stuff_url(sub_stuff, format: :json)
end
