require 'rails_helper'

RSpec.describe "Automation Script", type: :request do

  describe "Login Scenario" ,:js=>true do
    let(:login) { FactoryGirl.build(:company) }
    it "Login Positive" do
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
       visit '/schedulereport'
       click_link('Profile')
       click_link('Signout')
       visit '/'

    end

  end
end
