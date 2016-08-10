require 'rails_helper'

RSpec.describe "candidatedetails/index", type: :view do
  before(:each) do
    assign(:candidatedetails, [
      Candidatedetail.create!(),
      Candidatedetail.create!()
    ])
  end

  it "renders a list of candidatedetails" do
    render
  end
end
