class UserNotifier < ActionMailer::Base

 # send a signup email to the user, pass in the user object that   contains the user's email address
 def send_signup_email(user)
   @user = user
   mail( :to => @user.companyemail,:from => "honestraj.it@gmail.com",:subject => 'Thanks for Siginup Interviewapp',
   :body=>"Hi,\nThank you for Login Interview app URL:https://interviewerapps.herokuapp.com/

          Login Credential:
          =================
          Comapanymail: "+@user.companyemail+"
          Password    : "+@user.password+"
           " )
 end

 def send_forgotpassword(user)
   @user = user[0]
   mail( :to => @user.companyemail,:from => "honestraj.it@gmail.com",:subject => 'Thanks for Siginup Interviewapp',
   :body=>"Hi,\n  Your Password: URL:https://interviewerapps.herokuapp.com/

          Login Credential:
          =================
          Comapanymail: "+@user.companyemail+"
          Password    : "+@user.password+"
           " )
 end

end
