require 'rails_helper'

RSpec.describe "Automation script",type: :request do

   describe  "Candidate Creation Scenario",:js=>true do
    let(:login) { FactoryGirl.build(:company) }
    let(:skillset) { FactoryGirl.build(:skillset) }
    let(:candidatedetail) { FactoryGirl.build(:candidatedetail)}
    let(:candidateprofile) { FactoryGirl.build(:candidateprofile)}
     it "Candidate Creation Positive" do
         #skillsets add

        #  visit '/skillsets/new'
        #  fill_in "skillset[skills]",:with=>skillset.skills
        #  click_button('Create Skillset')
        #  visit '/skillsets'

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
        select "2", :from => "candidateprofile[candidatename]"
        
     end
  end

end
