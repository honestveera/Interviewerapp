json.array!(@candidatedetails) do |candidatedetail|
  json.extract! candidatedetail, :id, :candidatename, :candidateemail, :candidatecontact, :yoe, :skills, :jobdescription
  json.url candidatedetail_url(candidatedetail, format: :json)
end
