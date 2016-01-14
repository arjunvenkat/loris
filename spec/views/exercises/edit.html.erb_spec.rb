require 'rails_helper'

RSpec.describe "exercises/edit", type: :view do
  before(:each) do
    @exercise = assign(:exercise, Exercise.create!(
      :resource_id => 1,
      :url => "MyString",
      :position => 1
    ))
  end

  it "renders the edit exercise form" do
    render

    assert_select "form[action=?][method=?]", exercise_path(@exercise), "post" do

      assert_select "input#exercise_resource_id[name=?]", "exercise[resource_id]"

      assert_select "input#exercise_url[name=?]", "exercise[url]"

      assert_select "input#exercise_position[name=?]", "exercise[position]"
    end
  end
end
