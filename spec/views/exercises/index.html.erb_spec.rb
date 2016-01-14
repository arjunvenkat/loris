require 'rails_helper'

RSpec.describe "exercises/index", type: :view do
  before(:each) do
    assign(:exercises, [
      Exercise.create!(
        :resource_id => 1,
        :url => "Url",
        :position => 2
      ),
      Exercise.create!(
        :resource_id => 1,
        :url => "Url",
        :position => 2
      )
    ])
  end

  it "renders a list of exercises" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
