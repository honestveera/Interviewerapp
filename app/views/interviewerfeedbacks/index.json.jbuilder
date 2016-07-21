json.array!(@interviewerfeedbacks) do |interviewerfeedback|
  json.extract! interviewerfeedback, :id, :interviewername, :candidatename, :feedback, :status
  json.url interviewerfeedback_url(interviewerfeedback, format: :json)
end
