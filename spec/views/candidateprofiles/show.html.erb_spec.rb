require 'rails_helper'

RSpec.describe "candidateprofiles/show", type: :view do
  before(:each) do
    @candidateprofile = assign(:candidateprofile, Candidateprofile.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
