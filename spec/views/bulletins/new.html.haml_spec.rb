require 'spec_helper'

describe "bulletins/new" do
  before(:each) do
    assign(:bulletin, stub_model(Bulletin).as_new_record)
  end

  it "renders new bulletin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bulletins_path, :method => "post" do
    end
  end
end
