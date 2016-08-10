require 'rails_helper'

RSpec.describe "interviewerfeedbacks/new", type: :view do
  before(:each) do
    assign(:interviewerfeedback, Interviewerfeedback.new())
  end

  it "renders new interviewerfeedback form" do
    render

    assert_select "form[action=?][method=?]", interviewerfeedbacks_path, "post" do
    end
  end
end
