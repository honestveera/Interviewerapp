class ExampleMailer < ApplicationMailer
   default from: "honestraj.it@gmail.com"
   def sample_email(user)
      @user = user
      mail(to: @user.candidateemail, subject: @user.interviewername,body:@user.scheduletime)
      # mail(to: @user.intervieweremail, subject: @user.interviewername)
    end
    def sample_email1(user)
       @user = user
       mail(to: @user.intervieweremail, subject: @user.interviewername,body:@user.scheduletime)
       # mail(to: @user.intervieweremail, subject: @user.interviewername)
     end

end
