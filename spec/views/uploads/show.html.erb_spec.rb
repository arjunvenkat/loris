require 'rails_helper'

RSpec.describe "uploads/show", type: :view do
  before(:each) do
    @upload = assign(:upload, Upload.create!(
      :name => "Name",
      :file => "File",
      :user_id => "User"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/File/)
    expect(rendered).to match(/User/)
  end
end
