require 'rails_helper'

RSpec.describe "candidatedetails/show", type: :view do
  before(:each) do
    @candidatedetail = assign(:candidatedetail, Candidatedetail.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
