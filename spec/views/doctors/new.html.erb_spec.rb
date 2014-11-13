require 'spec_helper'

describe "doctors/new" do
  before(:each) do
    assign(:doctor, stub_model(Doctor,
      :full_name => "MyString",
      :overall_rating => 1,
      :rating => 1,
      :is_recommanded => false
    ).as_new_record)
  end

  it "renders new doctor form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", doctors_path, "post" do
      assert_select "input#doctor_full_name[name=?]", "doctor[full_name]"
      assert_select "input#doctor_overall_rating[name=?]", "doctor[overall_rating]"
      assert_select "input#doctor_rating[name=?]", "doctor[rating]"
      assert_select "input#doctor_is_recommanded[name=?]", "doctor[is_recommanded]"
    end
  end
end
