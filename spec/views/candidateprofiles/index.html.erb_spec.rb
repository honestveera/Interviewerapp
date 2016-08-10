require 'rails_helper'

RSpec.describe "candidateprofiles/index", type: :view do
  before(:each) do
    assign(:candidateprofiles, [
      Candidateprofile.create!(),
      Candidateprofile.create!()
    ])
  end

  it "renders a list of candidateprofiles" do
    render
  end
end
