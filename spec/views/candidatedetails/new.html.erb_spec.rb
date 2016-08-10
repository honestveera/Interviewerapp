require 'rails_helper'

RSpec.describe "candidatedetails/new", type: :view do
  before(:each) do
    assign(:candidatedetail, Candidatedetail.new())
  end

  it "renders new candidatedetail form" do
    render

    assert_select "form[action=?][method=?]", candidatedetails_path, "post" do
    end
  end
end
