require 'spec_helper'

describe "images/new.html.erb" do
  before(:each) do
    assign(:image, stub_model(Image,
      :title => "MyString",
      :description => "MyText",
      :file_name => "MyString",
      :content_type => "MyString",
      :file_size => 1
    ).as_new_record)
  end

  it "renders new image form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => images_path, :method => "post" do
      assert_select "input#image_title", :name => "image[title]"
      assert_select "textarea#image_description", :name => "image[description]"
      assert_select "input#image_file_name", :name => "image[file_name]"
      assert_select "input#image_content_type", :name => "image[content_type]"
      assert_select "input#image_file_size", :name => "image[file_size]"
    end
  end
end
