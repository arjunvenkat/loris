require 'rails_helper'

RSpec.describe "enrollments/index", type: :view do
  before(:each) do
    assign(:enrollments, [
      Enrollment.create!(
        :user_id => 1,
        :section_id => 2
      ),
      Enrollment.create!(
        :user_id => 1,
        :section_id => 2
      )
    ])
  end

  it "renders a list of enrollments" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
