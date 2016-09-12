require 'rails_helper'

RSpec.describe "calenders/index", type: :view do
  before(:each) do
    assign(:calenders, [
      Calender.create!(
        :date => "Date",
        :time => "Time",
        :interviewername => "Interviewername"
      ),
      Calender.create!(
        :date => "Date",
        :time => "Time",
        :interviewername => "Interviewername"
      )
    ])
  end

  it "renders a list of calenders" do
    render
    assert_select "tr>td", :text => "Date".to_s, :count => 2
    assert_select "tr>td", :text => "Time".to_s, :count => 2
    assert_select "tr>td", :text => "Interviewername".to_s, :count => 2
  end
end
