require "rails_helper"
feature "user visits homepage" do
  scenario "successfully" do
    visit root_path
    expect(page).to have_css('p', text: /Summary: \w/)
    expect(page).to have_css('p', text: /Temperature: \d/)
    expect(page).to have_css('p', text: /Wind Speed: \d/)
    expect(page).to have_css('p', text: /Timezone: \w/)
  end
end
