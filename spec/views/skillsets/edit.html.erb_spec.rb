require 'rails_helper'

RSpec.describe "skillsets/edit", type: :view do
  before(:each) do
    @skillset = assign(:skillset, Skillset.create!())
  end

  it "renders the edit skillset form" do
    render

    assert_select "form[action=?][method=?]", skillset_path(@skillset), "post" do
    end
  end
end
