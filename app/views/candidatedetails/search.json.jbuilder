#/categories/search.json.jbuilder
json.array!(@detail) do |category|
  json.extract! category, :id, :candidatename,:candidateemail,:candidatecontact,:skills,:yoe
end
