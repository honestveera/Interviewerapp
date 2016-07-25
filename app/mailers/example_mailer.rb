class ExampleMailer < ActionMailer::Base
   default from: "honestraj.it@gmail.com"
   def sample_email(user)
      @candidatesche = user
      receipent=[@candidatesche.candidateemail,@user.intervieweremail]
      mail(to: receipent, subject: @candidatesche.interviewername,body:@candidatesche.scheduletime)
   end


end
