require 'rails_helper'

RSpec.describe "concepts/show", type: :view do
  before(:each) do
    @concept = assign(:concept, Concept.create!(
      :roadmap_id => 1,
      :position => 2,
      :title => "Title",
      :content => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
  end
end
