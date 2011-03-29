require 'spec_helper'

describe "pieces/show.html.erb" do
  before(:each) do
    @piece = assign(:piece, stub_model(Piece,
      :title => "Title",
      :description => "MyText",
      :gallery => "Gallery"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Gallery/)
  end
end
