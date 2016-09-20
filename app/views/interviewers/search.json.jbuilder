#/categories/search.json.jbuilder
json.array!(@detail) do |category|
  json.extract! category, :id, :interviewername,:companyemail,:interviewercompany,:secondaryskills_id,:primaryskills_id,:otherskills
end
