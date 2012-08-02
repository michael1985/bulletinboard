require 'spec_helper'

describe "bulletins/index" do
  before(:each) do
    assign(:bulletins, [
      stub_model(Bulletin),
      stub_model(Bulletin)
    ])
  end

  it "renders a list of bulletins" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
