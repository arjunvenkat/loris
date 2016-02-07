require 'rails_helper'

RSpec.describe "uploads/index", type: :view do
  before(:each) do
    assign(:uploads, [
      Upload.create!(
        :name => "Name",
        :file => "File",
        :user_id => "User"
      ),
      Upload.create!(
        :name => "Name",
        :file => "File",
        :user_id => "User"
      )
    ])
  end

  it "renders a list of uploads" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "File".to_s, :count => 2
    assert_select "tr>td", :text => "User".to_s, :count => 2
  end
end
