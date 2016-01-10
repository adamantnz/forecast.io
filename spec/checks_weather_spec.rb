require "rails_helper"
feature "user visits homepage" do
  scenario "successfully" do
    visit root_path
    expect(page).to have_css 'h1', text: 'Weather'
  end

  feature do "sees some weather data"
    scenario do "successfully"
      visit root_path
      # NOTE: to do
      expect(page).to have_css 'p', text: 'Location: London'
    end
  end
end
