require 'rails_helper'

RSpec.describe "candidateprofiles/edit", type: :view do
  before(:each) do
    @candidateprofile = assign(:candidateprofile, Candidateprofile.create!())
  end

  it "renders the edit candidateprofile form" do
    render

    assert_select "form[action=?][method=?]", candidateprofile_path(@candidateprofile), "post" do
    end
  end
end
