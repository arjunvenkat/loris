require 'rails_helper'

RSpec.describe "concepts/index", type: :view do
  before(:each) do
    assign(:concepts, [
      Concept.create!(
        :roadmap_id => 1,
        :position => 2,
        :title => "Title",
        :content => "MyText"
      ),
      Concept.create!(
        :roadmap_id => 1,
        :position => 2,
        :title => "Title",
        :content => "MyText"
      )
    ])
  end

  it "renders a list of concepts" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end
