require 'spec_helper'

describe "stories/edit.html.erb" do
  before(:each) do
    @story = assign(:story, stub_model(Story,
      :title => "MyString",
      :description => "MyString",
      :author => "MyString"
    ))
  end

  it "renders the edit story form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => stories_path(@story), :method => "post" do
      assert_select "input#story_title", :name => "story[title]"
      assert_select "input#story_description", :name => "story[description]"
      assert_select "input#story_author", :name => "story[author]"
    end
  end
end
