require 'rails_helper'

RSpec.describe "enrollments/edit", type: :view do
  before(:each) do
    @enrollment = assign(:enrollment, Enrollment.create!(
      :user_id => 1,
      :section_id => 1
    ))
  end

  it "renders the edit enrollment form" do
    render

    assert_select "form[action=?][method=?]", enrollment_path(@enrollment), "post" do

      assert_select "input#enrollment_user_id[name=?]", "enrollment[user_id]"

      assert_select "input#enrollment_section_id[name=?]", "enrollment[section_id]"
    end
  end
end
