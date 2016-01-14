require 'rails_helper'

RSpec.describe "exercises/show", type: :view do
  before(:each) do
    @exercise = assign(:exercise, Exercise.create!(
      :resource_id => 1,
      :url => "Url",
      :position => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Url/)
    expect(rendered).to match(/2/)
  end
end
