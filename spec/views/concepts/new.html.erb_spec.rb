require 'rails_helper'

RSpec.describe "concepts/new", type: :view do
  before(:each) do
    assign(:concept, Concept.new(
      :roadmap_id => 1,
      :position => 1,
      :title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders new concept form" do
    render

    assert_select "form[action=?][method=?]", concepts_path, "post" do

      assert_select "input#concept_roadmap_id[name=?]", "concept[roadmap_id]"

      assert_select "input#concept_position[name=?]", "concept[position]"

      assert_select "input#concept_title[name=?]", "concept[title]"

      assert_select "textarea#concept_content[name=?]", "concept[content]"
    end
  end
end
