require 'spec_helper'

describe "doctors/index" do
  before(:each) do
    assign(:doctors, [
      stub_model(Doctor,
        :full_name => "Full Name",
        :overall_rating => 1,
        :rating => 2,
        :is_recommanded => false
      ),
      stub_model(Doctor,
        :full_name => "Full Name",
        :overall_rating => 1,
        :rating => 2,
        :is_recommanded => false
      )
    ])
  end

  it "renders a list of doctors" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Full Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
