require 'rails_helper'

RSpec.describe "calenders/show", type: :view do
  before(:each) do
    @calender = assign(:calender, Calender.create!(
      :date => "Date",
      :time => "Time",
      :interviewername => "Interviewername"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Date/)
    expect(rendered).to match(/Time/)
    expect(rendered).to match(/Interviewername/)
  end
end
