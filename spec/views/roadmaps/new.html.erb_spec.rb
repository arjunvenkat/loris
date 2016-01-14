require 'rails_helper'

RSpec.describe "roadmaps/new", type: :view do
  before(:each) do
    assign(:roadmap, Roadmap.new(
      :course_id => 1,
      :name => "MyString"
    ))
  end

  it "renders new roadmap form" do
    render

    assert_select "form[action=?][method=?]", roadmaps_path, "post" do

      assert_select "input#roadmap_course_id[name=?]", "roadmap[course_id]"

      assert_select "input#roadmap_name[name=?]", "roadmap[name]"
    end
  end
end
