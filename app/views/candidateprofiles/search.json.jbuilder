
#/categories/search.json.jbuilder
json.array!(@schedule) do |schedule|
  json.extract! schedule, :id,:candidatename, :candidateemail, :candidatecontact, :primaryskills,:secondaryskills,:otherskills, :YOE, :interviewername, :intervieweremail,:previouscompany, :scheduledate, :scheduletime
end
