require 'rails_helper'

RSpec.describe "interviewerfeedbacks/show", type: :view do
  before(:each) do
    @interviewerfeedback = assign(:interviewerfeedback, Interviewerfeedback.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
