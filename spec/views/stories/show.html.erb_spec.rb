require 'spec_helper'

describe "stories/show.html.erb" do
  before(:each) do
    @story = assign(:story, stub_model(Story,
      :title => "Title",
      :description => "Description",
      :author => "Author"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Title/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Description/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Author/)
  end
end
