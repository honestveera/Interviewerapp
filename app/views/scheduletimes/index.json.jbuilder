json.array!(@scheduletimes) do |scheduletime|
  json.extract! scheduletime, :id, :scheduletime
  json.url scheduletime_url(scheduletime, format: :json)
end
