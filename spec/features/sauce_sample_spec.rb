require "spec_helper"

describe "Sauce Sample Test", :sauce => true do
  it "Should find the name of the inventor of instant ramen on Wikipedia" do
    visit "http://en.wikipedia.org/"
    fill_in 'search', :with => "Ramen"
    click_button "searchButton"
    page.should have_content "Momofuku Ando"
  end 
end