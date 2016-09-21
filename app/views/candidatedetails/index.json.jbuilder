json.array!(@candidatedetails) do |candidatedetail|
  json.extract! candidatedetail, :id, :candidatename, :candidateemail, :candidatecontact, :jobtitle,:primaryskills,:secondaryskills,:otherskills,:primaryskills_id,:secondaryskills_id,:otherskills_id,:attachedfile,:status,:skypeid
  json.url candidatedetail_url(candidatedetail, format: :json)
end
