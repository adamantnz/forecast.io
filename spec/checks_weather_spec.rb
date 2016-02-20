require "rails_helper"
feature "user visits homepage" do
  scenario "successfully" do
    visit root_path
    fill_in "Latitude", with: "51.5072"
    fill_in "Longitude", with: "-0.1275"
    click_button "Search"
    expect(page).to have_css('h1', text: "Current Weather for 51.5072, -0.1275")
    expect(page).to have_css('p', text: /Summary: \w/)
    expect(page).to have_css('p', text: /Temperature: \d/)
    expect(page).to have_css('p', text: /Wind Speed: \d/)
    expect(page).to have_css('p', text: /Timezone: \w/)
  end
end
