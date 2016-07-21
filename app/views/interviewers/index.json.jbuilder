json.array!(@interviewers) do |interviewer|
  json.extract! interviewer, :id, :interviewername, :interviewercompany
  json.url interviewer_url(interviewer, format: :json)
end
