json.array!(@candidateprofiles) do |candidateprofile|
  json.extract! candidateprofile, :id, :candidatename, :candidateemail, :candidatecontact, :skills, :YOE, :interviewername, :intervieweremail, :scheduledate, :scheduletime, :jobdescription
  json.url candidateprofile_url(candidateprofile, format: :json)
end
