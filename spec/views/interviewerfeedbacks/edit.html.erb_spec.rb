require 'rails_helper'

RSpec.describe "interviewerfeedbacks/edit", type: :view do
  before(:each) do
    @interviewerfeedback = assign(:interviewerfeedback, Interviewerfeedback.create!())
  end

  it "renders the edit interviewerfeedback form" do
    render

    assert_select "form[action=?][method=?]", interviewerfeedback_path(@interviewerfeedback), "post" do
    end
  end
end
