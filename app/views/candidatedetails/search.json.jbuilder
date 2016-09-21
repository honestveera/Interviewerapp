#/categories/search.json.jbuilder
json.array!(@detail) do |category|
  json.extract! category, :id, :candidatename,:candidateemail,:candidatecontact,:primaryskills,:primaryskills_id,:secondaryskills,:secondaryskills_id,:otherskills,:jobtitle,:skypeid
end
