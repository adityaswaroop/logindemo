require 'spec_helper'

describe "stories/index.html.erb" do
  before(:each) do
    assign(:stories, [
      stub_model(Story,
        :title => "Title",
        :description => "Description",
        :author => "Author"
      ),
      stub_model(Story,
        :title => "Title",
        :description => "Description",
        :author => "Author"
      )
    ])
  end

  it "renders a list of stories" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Description".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Author".to_s, :count => 2
  end
end
