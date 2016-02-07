require 'rails_helper'

RSpec.describe "uploads/edit", type: :view do
  before(:each) do
    @upload = assign(:upload, Upload.create!(
      :name => "MyString",
      :file => "MyString",
      :user_id => "MyString"
    ))
  end

  it "renders the edit upload form" do
    render

    assert_select "form[action=?][method=?]", upload_path(@upload), "post" do

      assert_select "input#upload_name[name=?]", "upload[name]"

      assert_select "input#upload_file[name=?]", "upload[file]"

      assert_select "input#upload_user_id[name=?]", "upload[user_id]"
    end
  end
end
