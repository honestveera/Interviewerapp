
#/categories/search.json.jbuilder
json.array!(@schedule) do |schedule|
  json.extract! schedule, :id,:candidatename, :candidateemail, :candidatecontact, :skills, :YOE, :interviewername, :intervieweremail, :scheduledate, :scheduletime
end
