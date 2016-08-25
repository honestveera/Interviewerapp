
#/categories/search.json.jbuilder
json.array!(@schedule) do |schedule|
  json.extract! schedule, :id,:candidatename, :candidateemail, :candidatecontact, :skills, :YOE, :interviewername, :intervieweremail,:previouscompany, :scheduledate, :scheduletime
end
