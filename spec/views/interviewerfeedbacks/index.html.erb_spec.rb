require 'rails_helper'

RSpec.describe "interviewerfeedbacks/index", type: :view do
  before(:each) do
    assign(:interviewerfeedbacks, [
      Interviewerfeedback.create!(),
      Interviewerfeedback.create!()
    ])
  end

  it "renders a list of interviewerfeedbacks" do
    render
  end
end
