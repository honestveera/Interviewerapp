require 'rails_helper'

RSpec.describe "Automation script",type: :request do

   describe  "login Negative Scenario",:js=>true do
     it "Login Negative" do
        visit '/signup'
        fill_in "company[companyname]",:with=>""
        fill_in "company[companyaddress]",:with=>""
        fill_in "company[contactperson]",:with=>""
        fill_in "company[contactnumber]",:with=>"erwerr"
        fill_in "company[companyemail]",:with=>""
        fill_in "company[password]",:with=>""
        fill_in "company[password_confirmation]",:with=>"99948"
        check('checky')
        click_button('Create Company')
        visit '/'
     end
  end

end
