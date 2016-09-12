require 'rails_helper'

RSpec.describe "calenders/new", type: :view do
  before(:each) do
    assign(:calender, Calender.new(
      :date => "MyString",
      :time => "MyString",
      :interviewername => "MyString"
    ))
  end

  it "renders new calender form" do
    render

    assert_select "form[action=?][method=?]", calenders_path, "post" do

      assert_select "input#calender_date[name=?]", "calender[date]"

      assert_select "input#calender_time[name=?]", "calender[time]"

      assert_select "input#calender_interviewername[name=?]", "calender[interviewername]"
    end
  end
end
