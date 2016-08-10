require 'rails_helper'

RSpec.describe "candidatedetails/edit", type: :view do
  before(:each) do
    @candidatedetail = assign(:candidatedetail, Candidatedetail.create!())
  end

  it "renders the edit candidatedetail form" do
    render

    assert_select "form[action=?][method=?]", candidatedetail_path(@candidatedetail), "post" do
    end
  end
end
