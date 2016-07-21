json.array!(@calenders) do |calender|
  json.extract! calender, :id, :dates, :times
  json.url calender_url(calender, format: :json)
end
