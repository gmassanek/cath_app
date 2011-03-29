require 'spec_helper'

describe "pieces/edit.html.erb" do
  before(:each) do
    @piece = assign(:piece, stub_model(Piece,
      :title => "MyString",
      :description => "MyText",
      :gallery => "MyString"
    ))
  end

  it "renders the edit piece form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pieces_path(@piece), :method => "post" do
      assert_select "input#piece_title", :name => "piece[title]"
      assert_select "textarea#piece_description", :name => "piece[description]"
      assert_select "input#piece_gallery", :name => "piece[gallery]"
    end
  end
end
