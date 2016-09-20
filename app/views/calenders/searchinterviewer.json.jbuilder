json.array!(@interviewer) do |interviewer|
  json.extract! interviewer,  :interviewer_id,:interviewername
end
