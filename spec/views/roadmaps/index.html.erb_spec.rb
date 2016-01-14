require 'rails_helper'

RSpec.describe "roadmaps/index", type: :view do
  before(:each) do
    assign(:roadmaps, [
      Roadmap.create!(
        :course_id => 1,
        :name => "Name"
      ),
      Roadmap.create!(
        :course_id => 1,
        :name => "Name"
      )
    ])
  end

  it "renders a list of roadmaps" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
