json.array!(@interviewer) do |interviewer|
  json.extract! interviewer, :id, :interviewername
end
