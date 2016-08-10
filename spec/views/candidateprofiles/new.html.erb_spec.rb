require 'rails_helper'

RSpec.describe "candidateprofiles/new", type: :view do
  before(:each) do
    assign(:candidateprofile, Candidateprofile.new())
  end

  it "renders new candidateprofile form" do
    render

    assert_select "form[action=?][method=?]", candidateprofiles_path, "post" do
    end
  end
end
