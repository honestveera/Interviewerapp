json.array!(@companies) do |company|
  json.extract! company, :id, :companyname, :companyaddress, :contactperson, :contactnumber
  json.url company_url(company, format: :json)
end
