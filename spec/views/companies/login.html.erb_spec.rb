require 'rails_helper'

RSpec.describe "companies/login", type: :view do
  before(:each) do
    @params = valid_attributes
    assign(:company, Company.new())
  end
  it "renders new company form" do
    render

    assert_select "form[action=?][method=?]", companies_path, "post" do
    end
  end
end
