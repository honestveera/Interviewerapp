class ExampleMailer < ActionMailer::Base
   default from: "honestraj.it@gmail.com"

   def sample_email(user)
      @candidatesche = user
      receipent=[@candidatesche.candidateemail,@candidatesche.intervieweremail]
      headers['Return-Receipt-To'] = 'honestraj.it@gmail.com'
      mail(to: receipent,
           subject: "Interview Call Letter \t "+@candidatesche.candidatename,
           body:"Dear Candidate,

                    Refer your application on for the post of" + @candidatesche.candidatename + "Please attend for interview as per details given bellow.

                    Date:"+@candidatesche.scheduledate+"

                    Time:"+@candidatesche.scheduletime+"

                    Venue:  Markuci Inc,
                            No:30,Srinivasa Nagar,First Street,
                            Kandhachavadi,
                            OMR Chennai.
                    LandMark:Near Hotel SaravanaBhavan


                    Please bring with you the relevant testimonials and certificates for
                    panel verification, if required.

                    Contact:
                    Name : Jayandhi Priyadharsini
                    Email:jayanthip@markuci.com | www.markuci.com
                    Contact No:+91 9962118160")
   end

   def sample_email_update(user)
      @candidatesche = user
      receipent=[@candidatesche.candidateemail,@candidatesche.intervieweremail]
      headers['Return-Receipt-To'] = 'honestraj.it@gmail.com'
      mail(to: receipent,
           subject: "Interview Scheduletime To Be Changed \t "+@candidatesche.candidatename,
           body:"Dear Candidate,

                    Refer your application on for the post of" + @candidatesche.candidatename + "Please attend for interview as per details given bellow.

                    Date:"+@candidatesche.scheduledate+"

                    Time:"+@candidatesche.scheduletime+"

                    Venue:  Markuci Inc,
                            No:30,Srinivasa Nagar,First Street,
                            Kandhachavadi,
                            OMR Chennai.
                    LandMark:Near Hotel SaravanaBhavan


                    Please bring with you the relevant testimonials and certificates for
                    panel verification, if required.

                    Contact:
                    Name : Jayandhi Priyadharsini
                    Email:jayanthip@markuci.com | www.markuci.com
                    Contact No:+91 9962118160")
   end

end
