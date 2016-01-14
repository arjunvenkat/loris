require 'rails_helper'

RSpec.describe "roadmaps/show", type: :view do
  before(:each) do
    @roadmap = assign(:roadmap, Roadmap.create!(
      :course_id => 1,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Name/)
  end
end
