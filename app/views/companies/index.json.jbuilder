json.array!(@companies) do |company|
  json.extract! company, :id,:role,:companyemail
  json.url company_url(company, format: :json)
end
