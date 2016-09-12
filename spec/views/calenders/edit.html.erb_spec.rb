require 'rails_helper'

RSpec.describe "calenders/edit", type: :view do
  before(:each) do
    @calender = assign(:calender, Calender.create!(
      :date => "MyString",
      :time => "MyString",
      :interviewername => "MyString"
    ))
  end

  it "renders the edit calender form" do
    render

    assert_select "form[action=?][method=?]", calender_path(@calender), "post" do

      assert_select "input#calender_date[name=?]", "calender[date]"

      assert_select "input#calender_time[name=?]", "calender[time]"

      assert_select "input#calender_interviewername[name=?]", "calender[interviewername]"
    end
  end
end
