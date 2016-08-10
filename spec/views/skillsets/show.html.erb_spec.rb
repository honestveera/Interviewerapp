require 'rails_helper'

RSpec.describe "skillsets/show", type: :view do
  before(:each) do
    @skillset = assign(:skillset, Skillset.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
