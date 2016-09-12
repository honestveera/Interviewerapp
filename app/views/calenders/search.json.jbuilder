#/categories/search.json.jbuilder
json.array!(@detail) do |category|
  json.extract! category, :id,:interviewername,:interviewer_id,:status,:time,:date
end
