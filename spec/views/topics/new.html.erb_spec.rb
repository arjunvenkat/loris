require 'rails_helper'

RSpec.describe "topics/new", type: :view do
  before(:each) do
    assign(:topic, Topic.new(
      :name => "MyString",
      :roadmap_id => 1,
      :position => 1
    ))
  end

  it "renders new topic form" do
    render

    assert_select "form[action=?][method=?]", topics_path, "post" do

      assert_select "input#topic_name[name=?]", "topic[name]"

      assert_select "input#topic_roadmap_id[name=?]", "topic[roadmap_id]"

      assert_select "input#topic_position[name=?]", "topic[position]"
    end
  end
end
