require 'spec_helper'

describe "bulletins/edit" do
  before(:each) do
    @bulletin = assign(:bulletin, stub_model(Bulletin))
  end

  it "renders the edit bulletin form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => bulletins_path(@bulletin), :method => "post" do
    end
  end
end
