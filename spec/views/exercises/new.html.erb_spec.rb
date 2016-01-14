require 'rails_helper'

RSpec.describe "exercises/new", type: :view do
  before(:each) do
    assign(:exercise, Exercise.new(
      :resource_id => 1,
      :url => "MyString",
      :position => 1
    ))
  end

  it "renders new exercise form" do
    render

    assert_select "form[action=?][method=?]", exercises_path, "post" do

      assert_select "input#exercise_resource_id[name=?]", "exercise[resource_id]"

      assert_select "input#exercise_url[name=?]", "exercise[url]"

      assert_select "input#exercise_position[name=?]", "exercise[position]"
    end
  end
end
