#/categories/search.json.jbuilder
json.array!(@detail) do |category|
  json.extract! category, :id, :interviewername,:companyemail,:interviewercompany,:skills
end
