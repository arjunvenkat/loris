require 'rails_helper'

RSpec.describe "concepts/edit", type: :view do
  before(:each) do
    @concept = assign(:concept, Concept.create!(
      :roadmap_id => 1,
      :position => 1,
      :title => "MyString",
      :content => "MyText"
    ))
  end

  it "renders the edit concept form" do
    render

    assert_select "form[action=?][method=?]", concept_path(@concept), "post" do

      assert_select "input#concept_roadmap_id[name=?]", "concept[roadmap_id]"

      assert_select "input#concept_position[name=?]", "concept[position]"

      assert_select "input#concept_title[name=?]", "concept[title]"

      assert_select "textarea#concept_content[name=?]", "concept[content]"
    end
  end
end
