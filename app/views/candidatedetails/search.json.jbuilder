#/categories/search.json.jbuilder
json.array!(@detail) do |category|
  json.extract! category, :id, :candidatename,:candidateemail,:candidatecontact,:primaryskills,:primaryskills_id,:secondaryskills,:secondaryskills_id,:otherskills,:otherskills_id,:yoe,:jobtitle,:previouscompany
end
