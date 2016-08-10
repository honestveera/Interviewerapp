require 'rails_helper'

RSpec.describe "skillsets/new", type: :view do
  before(:each) do
    assign(:skillset, Skillset.new())
  end

  it "renders new skillset form" do
    render

    assert_select "form[action=?][method=?]", skillsets_path, "post" do
    end
  end
end
