# Interviewerapp
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
:address              => "smtp.gmail.com",
:port                 => 587,
:user_name            => 'honestraj.it@gmail.com',
:password             => '9994813212',
:authentication       => "plain",
:enable_starttls_auto => true
}


class MyMailer < ActionMailer::Base
def test_email
@recipients = “honestrajk@markuci.com”
@from = “honestraj.it@gmail.com”
@subject = “this is a subject”
@body = “this is the body”
end

end
