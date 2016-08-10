require 'rails_helper'

RSpec.describe "skillsets/index", type: :view do
  before(:each) do
    assign(:skillsets, [
      Skillset.create!(),
      Skillset.create!()
    ])
  end

  it "renders a list of skillsets" do
    render
  end
end
