require 'rails_helper'

RSpec.describe "roadmaps/edit", type: :view do
  before(:each) do
    @roadmap = assign(:roadmap, Roadmap.create!(
      :course_id => 1,
      :name => "MyString"
    ))
  end

  it "renders the edit roadmap form" do
    render

    assert_select "form[action=?][method=?]", roadmap_path(@roadmap), "post" do

      assert_select "input#roadmap_course_id[name=?]", "roadmap[course_id]"

      assert_select "input#roadmap_name[name=?]", "roadmap[name]"
    end
  end
end
