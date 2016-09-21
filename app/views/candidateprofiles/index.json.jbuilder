json.array!(@candidateprofiles) do |candidateprofile|
  json.extract! candidateprofile, :id, :candidatename, :primaryskills,:secondaryskills,:otherskills, :interviewername,:interviewer_id,:intervieweremail, :scheduledate, :scheduletime,:jobtitle,:jobdescription,:candidatedetail_id,:status,:skypeid
  json.url candidateprofile_url(candidateprofile, format: :json)
end
