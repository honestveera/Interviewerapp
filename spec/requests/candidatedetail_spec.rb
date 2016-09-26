require 'rails_helper'

RSpec.describe "Automation script",type: :request do

   describe  "Candidate Creation Scenario",:js=>true do
    let(:login) { FactoryGirl.build(:company) }
    let(:skillset) { FactoryGirl.build(:skillset) }
    let(:interviewer){FactoryGirl.build(:interviewer)}
    let(:candidatedetail) { FactoryGirl.build(:candidatedetail)}
    let(:candidateprofile) { FactoryGirl.build(:candidateprofile)}
    let(:interviewerfeedback) { FactoryGirl.build(:interviewerfeedback)}
     it "Candidate Creation Positive" do
         #skillsets add
         visit '/skillsets/new'
         fill_in "skillset[skills]",:with=>skillset.skills
         click_button('Create Skillset')
         visit '/skillsets'

        #interviewer details
         visit '/interviewers/new'
         fill_in "interviewer[interviewername]",:with=>interviewer.interviewername
         fill_in "interviewer[interviewercompany]",:with=>interviewer.interviewercompany
         fill_in "interviewer[companyemail]",:with=>interviewer.companyemail
         select skillset.skills,:from=>"interviewer[primaryskills]"
         select skillset.skills,:from=>"interviewer[secondaryskills]"
         click_button('Create Interviewer')
         visit '/interviewers'

         #Session Testing
        visit '/candidateentry'
        visit '/candidateschedule'
        visit '/interviewerfeed'
        visit '/candidatereports'
        visit '/candidateschedulereports'
        visit '/schedulereport'

        #Signup and login
        visit '/signup'
        fill_in "company[companyname]",:with=>login.companyname
        fill_in "company[companyaddress]",:with=>login.companyaddress
        fill_in "company[contactperson]",:with=>login.contactperson
        fill_in "company[contactnumber]",:with=>login.contactnumber
        fill_in "company[companyemail]",:with=>login.companyemail
        fill_in "company[password]",:with=>login.password
        fill_in "company[password_confirmation]",:with=>login.password_confirmation
        check('checky')
        click_button('Create Company')
        visit '/'
        fill_in "company[companyemail]",:with=>login.companyemail
        fill_in "company[password]",:with=>login.password
        check('checky')
        click_button('Login')

        #Candidate profileentry
        visit '/schedulereport'
        click_link('Candidates')
        click_link('Candidates Profile')
        visit '/candidateentry'
        fill_in "candidatedetail[candidatename]",:with=>candidatedetail.candidatename
        fill_in "candidatedetail[candidateemail]",:with=>candidatedetail.candidateemail
        fill_in "candidatedetail[candidatecontact]",:with=>candidatedetail.candidatecontact
        select "2", :from => "candidatedetail[yoe]"
        select "JavaEEE", :from => "candidatedetail[skills]"
        fill_in  "candidatedetail[jobtitle]",:with=>candidatedetail.jobtitle
        fill_in  "candidatedetail[jobdescription]",:with=>candidatedetail.jobdescription
        #fill_in  "candidatedetail[status]",:with=>candidatedetail.status
        click_button('Create Candidatedetail')

        #Candidate Schedule
        visit '/candidateschedule'
        select candidatedetail.candidatename, :from => "candidatename"
        wait = Selenium::WebDriver::Wait.new ignore: Selenium::WebDriver::Error::NoAlertPresentError
        alert = wait.until { page.driver.browser.switch_to.alert }
        alert.accept
        select interviewer.interviewername, :from=>"interviewername"
        wait = Selenium::WebDriver::Wait.new ignore: Selenium::WebDriver::Error::NoAlertPresentError
        alert = wait.until { page.driver.browser.switch_to.alert }
        alert.accept
        fill_in "candidateprofile[scheduledate]",:with=>candidateprofile.scheduledate
        fill_in "candidateprofile[scheduletime]",:with=>candidateprofile.scheduletime
        click_button('Create Candidateprofile')

        #interviewer feedback
        visit '/interviewerfeed'
        select candidateprofile.candidatename, :from=>"candidatename"
        wait = Selenium::WebDriver::Wait.new ignore: Selenium::WebDriver::Error::NoAlertPresentError
        alert = wait.until { page.driver.browser.switch_to.alert }
        alert.accept
        wait = Selenium::WebDriver::Wait.new ignore: Selenium::WebDriver::Error::NoAlertPresentError
        alert = wait.until { page.driver.browser.switch_to.alert }
        alert.accept
        fill_in "interviewerfeedback[addcomment]",:with=>interviewerfeedback.addcomment
        choose('interviewerfeedback_relevanceexperience_3')
        choose('interviewerfeedback_personality_3')
        choose('interviewerfeedback_communication_3')
        choose('interviewerfeedback_technicalskills_3')
        choose('interviewerfeedback_analyticalskills_3')
        choose('interviewerfeedback_jobknowledge_3')
        choose('interviewerfeedback_timemanagement_5')
        choose('interviewerfeedback_commitementtask_5')
        choose('interviewerfeedback_leadership_4')
        choose('interviewerfeedback_teamwork_3')
        choose('interviewerfeedback_goalsettings_3')
        choose('interviewerfeedback_creativity_4')
        choose('interviewerfeedback_flexibility_3')
        choose('interviewerfeedback_assertiveness_3')
        select "Pass",:from=>"interviewerfeedback[status]"
        click_button('Create Interviewerfeedback')

        visit '/candidatereports'
        visit '/candidateschedulereports'
        visit '/schedulereport'

        click_link('Profile')
        click_link('Signout')
        visit '/'
     end
  end

end
