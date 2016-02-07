require 'rails_helper'

RSpec.describe "uploads/new", type: :view do
  before(:each) do
    assign(:upload, Upload.new(
      :name => "MyString",
      :file => "MyString",
      :user_id => "MyString"
    ))
  end

  it "renders new upload form" do
    render

    assert_select "form[action=?][method=?]", uploads_path, "post" do

      assert_select "input#upload_name[name=?]", "upload[name]"

      assert_select "input#upload_file[name=?]", "upload[file]"

      assert_select "input#upload_user_id[name=?]", "upload[user_id]"
    end
  end
end
