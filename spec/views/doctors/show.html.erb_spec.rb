require 'spec_helper'

describe "doctors/show" do
  before(:each) do
    @doctor = assign(:doctor, stub_model(Doctor,
      :full_name => "Full Name",
      :overall_rating => 1,
      :rating => 2,
      :is_recommanded => false
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Full Name/)
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/false/)
  end
end
